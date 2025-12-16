// Giperion December 2020
// [EUREKA] 4.5
// Turtle Project Group
#include <iostream>
#include <cassert>
#include <vector>
#include <stdint.h>
#include <cfloat>
#include <string>
#include <windows.h>
#include <DirectXMath.h>
#include <sstream>

#undef min
#undef max

// Спасибо Окси!
#include "vector3.h"

using uint32 = uint32_t;
using uint8 = uint8_t;
using int16 = int16_t;
using int32 = int32_t;

struct Vec3D
{
	float x;
	float y;
	float z;
};

enum class InterpolationMethod : int16
{
	None,
	Linear,
	Hermite
};

// sub-block in block E - animation data
struct AnimationBlock {
	InterpolationMethod type;		// interpolation type (0=none, 1=linear, 2=hermite)
	int16 seq;		// global sequence id or -1
	uint32 nRanges;
	uint32 ofsRanges;
	uint32 nTimes;
	uint32 ofsTimes;
	uint32 nKeys;
	uint32 ofsKeys;
};

struct ModelCameraDef {
	int32 id;
	float fov, farclip, nearclip;
	AnimationBlock transPos;
	Vec3D pos;
	AnimationBlock transTarget;
	Vec3D target;
	AnimationBlock rot;
};

struct ModelAttachmentDef {
	int32 id;
	int32 bone;
	Vec3D pos;
	AnimationBlock unk;
};

// block B - animations
struct ModelAnimation {
	uint32 animID;
	uint32 timeStart;
	uint32 timeEnd;

	float moveSpeed;

	uint32 loopType;
	uint32 flags;
	uint32 d1;
	uint32 d2;
	uint32 playSpeed;  // note: this can't be play speed because it's 0 for some models

	Vec3D boxA, boxB;
	float rad;

	int16 s[2];
};

struct ModelAnimationLookup
{
	uint16_t AnimIndex; // can be 0 for camera
};

struct ModelBoneDef {
	int32 animid;
	int32 flags;
	int16 parent; // parent bone index
	int16 geoid;
	// new int added to the bone definitions.  Added in WoW 2.0
	//int32 unknown;
	AnimationBlock translation;
	AnimationBlock rotation;
	AnimationBlock scaling;
	Vec3D pivot;
};

struct ModelKeyBoneLookup
{
	uint16_t Index; // can be -1 if none
};

struct ModelView {
	uint32 nIndex, ofsIndex; // Vertices in this model (index into vertices[])
	uint32 nTris, ofsTris;	 // indices
	uint32 nProps, ofsProps; // additional vtx properties
	uint32 nSub, ofsSub;	 // materials/renderops/submeshes
	uint32 nTex, ofsTex;	 // material properties/textures
	int32 lod;				 // LOD bias?
};

struct ModelHeader
{
	char id[4];
	uint32 version;
	uint32 nameLength;
	uint32 nameOfs;
	uint32 type;
	uint32 nGlobalSequences;
	uint32 ofsGlobalSequences;
	uint32 nAnimations;
	uint32 ofsAnimations;
	uint32 nAnimationLookup;
	uint32 ofsAnimationLookup;
	uint32 nD;
	uint32 ofsD;
	uint32 nBones;
	uint32 ofsBones;
	uint32 nKeyBoneLookup;
	uint32 ofsKeyBoneLookup;
	uint32 nVertices;
	uint32 ofsVertices;
	uint32 nViews;
	uint32 ofsViews;
	uint32 nColors;
	uint32 ofsColors;
	uint32 nTextures;
	uint32 ofsTextures;
	uint32 nTransparency;
	uint32 ofsTransparency;
	uint32 nI;
	uint32 ofsI;
	uint32 nTextureanimations;
	uint32 ofsTextureanimations;
	uint32 nTexReplace;
	uint32 ofsTexReplace;
	uint32 nRenderFlags;
	uint32 ofsRenderFlags;
	uint32 nBoneLookupTable;
	uint32 ofsBoneLookupTable;
	uint32 nTexLookup;
	uint32 ofsTexLookup;
	uint32 nTexUnits;
	uint32 ofsTexUnits;
	uint32 nTransLookup;
	uint32 ofsTransLookup;
	uint32 nTexAnimLookup;
	uint32 ofsTexAnimLookup;
	float floats[14];
	uint32 nBoundingTriangles;
	uint32 ofsBoundingTriangles;
	uint32 nBoundingVertices;
	uint32 ofsBoundingVertices;
	uint32 nBoundingNormals;
	uint32 ofsBoundingNormals;
	uint32 nAttachments;
	uint32 ofsAttachments;
	uint32 nAttachLookup;
	uint32 ofsAttachLookup;
	uint32 nAttachments_2;
	uint32 ofsAttachments_2;
	uint32 nLights;
	uint32 ofsLights;
	uint32 nCameras;
	uint32 ofsCameras;
	uint32 nCameraLookup;
	uint32 ofsCameraLookup;
	uint32 nRibbonEmitters;
	uint32 ofsRibbonEmitters;
	uint32 nParticleEmitters;
	uint32 ofsParticleEmitters;

};

struct ModelAnimRange
{
	uint32 First;
	uint32 Second;
};

struct CameraPoint
{
	Fvector Position;
	Fvector Target;
	uint32 Time;
};

typedef std::vector<std::string> Tokens;

Tokens StrSplit(const std::string& src, const std::string& sep)
{
	Tokens r;
	std::string s;
	for (std::string::const_iterator i = src.begin(); i != src.end(); i++)
	{
		if (sep.find(*i) != std::string::npos)
		{
			if (s.length()) r.push_back(s);
			s = "";
		}
		else
		{
			s += *i;
		}
	}
	if (s.length()) r.push_back(s);
	return r;
}


uint32 Duration = 53 * 1000;
uint32 CinematicID = 0;

Fvector CameraOrigin = { -5281.0f, -3686.0f, 330.0f };

std::vector<CameraPoint> CameraPoints;

enum TargetBlock
{
	TargetBlockPos,
	TargetBlockTarget
};

enum SmoothType
{
	SmoothIn,
	SmoothOut
};

// Credit to Denis Voloshin
void SmoothPoint(Fvector PrevPoint, Fvector BasePoint, Fvector NextPoint, SmoothType type, Fvector& OutPoint)
{
	// calc direction
	Fvector Dir = BasePoint;
	Dir.sub(PrevPoint);
	float PrevLen = Dir.magnitude();
	Dir.normalize();

	Fvector NextDir = NextPoint;
	NextDir.sub(BasePoint);
	float NextLen = NextDir.magnitude();
	NextDir.normalize();

	Fvector Result = Dir;
	Dir.add(NextDir);
	Result.normalize();

	switch (type)
	{
	case SmoothIn:
	{
		float HalfMagn = PrevLen / 2.0f;
		Result.mul(HalfMagn);
		OutPoint = BasePoint;
		OutPoint.sub(Result);
	}
		break;
	case SmoothOut:
	{
		float HalfMagn = NextLen / 2.0f;
		Result.mul(HalfMagn);
		OutPoint = BasePoint;
		OutPoint.add(Result);
	}
		break;
	default:
		break;
	}

	//OutPoint = Result;
}

void ModAnimationBlock(char* m2Content, AnimationBlock& InBlock, TargetBlock block)
{
	int AnimPoints = CameraPoints.size();

	ModelAnimRange* Range = (ModelAnimRange*)(m2Content + InBlock.ofsRanges);
	Range->Second = AnimPoints - 1;

	if (AnimPoints > InBlock.nTimes )
	{
		std::cerr << "Amount of points is greater then donor point count: " << InBlock.nTimes << std::endl;
		return;
	}

	InBlock.nTimes = AnimPoints;

	uint32* TimeData = (uint32*)(m2Content + InBlock.ofsTimes);
	for (int i = 0; i < AnimPoints; i++)
	{
		TimeData[i] = CameraPoints[i].Time;
	}

	InBlock.nKeys = AnimPoints;

	Fvector* KeysArr = (Fvector*)(m2Content + InBlock.ofsKeys);

	auto GetPointLambda = [block, AnimPoints](int i) -> Fvector
	{
		if (i < 0)
		{
			return { 0.0f, 0.0f, 0.0f };
		}
		else if (i >= AnimPoints)
		{
			return { 0.0f, 0.0f, 0.0f };
		}

		Fvector OurPoint;
		switch (block)
		{
		case TargetBlockPos:
			OurPoint = CameraPoints[i].Position;
			break;
		case TargetBlockTarget:
			OurPoint = CameraPoints[i].Target;
			break;
		default:
			break;
		}

		Fvector CalcPoint = OurPoint;
		CalcPoint.sub(CameraOrigin);
		OurPoint = CalcPoint;

		return OurPoint;
	};

	for (int i = 0; i < AnimPoints; i++)
	{
		Fvector OurPoint = GetPointLambda(i);

		int BaseIndex = i * 3;
		KeysArr[BaseIndex + 0] = OurPoint; // Data
		KeysArr[BaseIndex + 1] = OurPoint; // In
		KeysArr[BaseIndex + 2] = OurPoint; // Out

#if 1
		if (i == 0)
		{
			KeysArr[BaseIndex + 1] = OurPoint; // In
		}
		else
		{
			Fvector SmoothedIn;
			SmoothPoint(GetPointLambda(i - 1), OurPoint, GetPointLambda(i + 1), SmoothIn, SmoothedIn);
			KeysArr[BaseIndex + 1] = SmoothedIn; // In
		}

		if (i == (AnimPoints - 1))
		{
			KeysArr[BaseIndex + 2] = OurPoint; // Out
		}
		else
		{
			Fvector SmoothedOut;
			SmoothPoint(GetPointLambda(i - 1), OurPoint, GetPointLambda(i + 1), SmoothOut, SmoothedOut);
			KeysArr[BaseIndex + 2] = SmoothedOut; // Out
		}
#endif
	}
}

void PrintAnimationBlock(char* m2Content, AnimationBlock& InBlock)
{
	switch (InBlock.type)
	{
	case InterpolationMethod::None:
		std::cout << "Interpolation: None" << std::endl;
		break;
	case InterpolationMethod::Linear:
		std::cout << "Interpolation: Linear" << std::endl;
		break;
	case InterpolationMethod::Hermite:
		std::cout << "Interpolation: Hermite" << std::endl;
		break;
	default:
		break;
	}

	if (InBlock.nRanges > 0)
	{
		std::vector<ModelAnimRange> AnimRanges;
		AnimRanges.resize(InBlock.nRanges);

		ModelAnimRange* pRangeStart = (ModelAnimRange*)(m2Content + InBlock.ofsRanges);
		memcpy(AnimRanges.data(), pRangeStart, sizeof(ModelAnimRange) * InBlock.nRanges);

		std::cout << "Printing ranges Num: " << InBlock.nRanges << std::endl;
		for (const ModelAnimRange& Item : AnimRanges)
		{
			std::cout << "\tFirst: " << Item.First << " Second: " << Item.Second << "" << std::endl;
		}
	}

	std::vector<uint32> Times;
	Times.resize(InBlock.nTimes);
	uint32* pTimesStart = (uint32*)(m2Content + InBlock.ofsTimes);
	memcpy(Times.data(), pTimesStart, InBlock.nTimes * sizeof(uint32));

	std::cout << "Printing Times Num: " << InBlock.nTimes << std::endl;

	for (uint32 time : Times)
	{
		std::cout << "\tTime: " << time << std::endl;
	}

	if (InBlock.type == InterpolationMethod::None || InBlock.type == InterpolationMethod::Linear)
	{
		std::vector<Vec3D> Data;
		Data.resize(InBlock.nKeys);
		Vec3D* pKeysStart = (Vec3D*)(m2Content + InBlock.ofsKeys);

		for (int i = 0; i < InBlock.nKeys; i++)
		{
			Data[i] = pKeysStart[i];
		}

		for (int i = 0; i < InBlock.nKeys; i++)
		{
			Vec3D& DataKey = Data[i];
			std::cout << "\tData X: " << DataKey.x << " Y: " << DataKey.y << " Z: " << DataKey.z << std::endl;
		}
	}
	else if (InBlock.type == InterpolationMethod::Hermite)
	{
		std::vector<Vec3D> Data;
		std::vector<Vec3D> In;
		std::vector<Vec3D> Out;

		Data.resize(InBlock.nKeys);
		In.resize(InBlock.nKeys);
		Out.resize(InBlock.nKeys);

		Vec3D* pKeysStart = (Vec3D*)(m2Content + InBlock.ofsKeys);

		for (int i = 0; i < InBlock.nKeys; i++)
		{
			Data[i] = pKeysStart[i * 3];
			In[i] = pKeysStart[i * 3 + 1];
			Out[i] = pKeysStart[i * 3 + 2];
		}

		// print data
		for (int i = 0; i < InBlock.nKeys; i++)
		{
			Vec3D& DataKey = Data[i];
			Vec3D& InKey = In[i];
			Vec3D& OutKey = Out[i];
			std::cout << "\tData X: " << DataKey.x << " Y: " << DataKey.y << " Z: " << DataKey.z << std::endl;
			std::cout << "\tIn X: " << InKey.x << " Y: " << InKey.y << " Z: " << InKey.z << std::endl;
			std::cout << "\tOut X: " << OutKey.x << " Y: " << OutKey.y << " Z: " << OutKey.z << std::endl;
			std::cout << std::endl;
		}
	}
}

bool ReadPoints()
{
	FILE* pointsFile = fopen("points.txt", "rt");
	if (pointsFile == NULL)
	{
		std::cerr << "points.txt is not found!" << std::endl;
		return false;
	}


	fseek(pointsFile, 0, SEEK_END);
	long fileSize = ftell(pointsFile);
	fseek(pointsFile, 0, SEEK_SET);

	std::string AllFile;
	AllFile.resize(fileSize + 1);
	fread((char*)AllFile.data(), fileSize, 1, pointsFile);
	fclose(pointsFile); pointsFile = NULL;

	Tokens FileLines = StrSplit(AllFile, "\n");

	for (int32 i = 0; i < FileLines.size(); i++)
	{
		std::string& Line = FileLines[i];
		std::string ClearLine;
		size_t CommentPlace = Line.find(';');
		if (CommentPlace != std::string::npos)
		{
			Tokens CommentAndVarTokens = StrSplit(Line, ";");
			ClearLine = CommentAndVarTokens[0];
		}
		else
		{
			ClearLine = Line;
		}
		if (i == 0)
		{
			Tokens PosTokens = StrSplit(ClearLine, " ");
			if (PosTokens.size() != 3)
			{
				std::cerr << "Position should be a 3 point vector" << std::endl;
				return false;
			}

			CameraOrigin.x = atof(PosTokens[0].c_str());
			CameraOrigin.y = atof(PosTokens[1].c_str());
			CameraOrigin.z = atof(PosTokens[2].c_str());
		}
		else if (i == 1)
		{
			Duration = atoi(ClearLine.c_str());
			Duration *= 1000;
		}
		else if (i == 2)
		{
			CinematicID = atoi(ClearLine.c_str());
		}
		else
		{
			Tokens CameraPointsTok = StrSplit(ClearLine, ":");
			if (CameraPointsTok.size() != 3)
			{
				std::cerr << "Camera point should be 3 component. Stuck at point: " << i << std::endl;
				return false;
			}

			Tokens OriginPointTok = StrSplit(CameraPointsTok[0], " ");
			Tokens TargetPointTok = StrSplit(CameraPointsTok[1], " ");
			double Duration = atof(CameraPointsTok[2].c_str());

			CameraPoint Point;
			Point.Position.x = atof(OriginPointTok[0].c_str());
			Point.Position.y = atof(OriginPointTok[1].c_str());
			Point.Position.z = atof(OriginPointTok[2].c_str());

			Point.Target.x = atof(TargetPointTok[0].c_str());
			Point.Target.y = atof(TargetPointTok[1].c_str());
			Point.Target.z = atof(TargetPointTok[2].c_str());

			Point.Time = (uint32)floor(Duration * 1000.0);
			CameraPoints.push_back(Point);
		}
	}

	return true;
}

std::string OutputFile;

void GenerateSQLScript()
{
	std::stringstream ss;
	ss << "-- Generated by \"GenerateCameraMesh\" program. Giperion 2020 - 2023 for Turtle project" << std::endl;
	ss << std::endl;
	ss << "DELETE FROM cinematic_waypoints WHERE cinematic = " << CinematicID << ";" << std::endl;
	ss << std::endl;
	for (int32 i = 0; i < CameraPoints.size(); i++)
	{
		const CameraPoint& p = CameraPoints[i];
		char Comment[256] = {0};
		wsprintfA(Comment, "%s_%d", OutputFile.c_str(), i);
		ss << "INSERT INTO `cinematic_waypoints` (`cinematic`, `timer`, `position_x`, `position_y`, `position_z`, `comment`) "
			"VALUES('" << CinematicID << "', '" << p.Time << "', '" << p.Position.x << "', '" << p.Position.y << "', '" << p.Position.z << "', '" << Comment << "');" << std::endl;
	}
	ss << std::endl;

	std::string Buf = ss.str();
	FILE* CinematicScriptFile = fopen("CinematicPoints.sql", "wb+");
	fwrite(Buf.c_str(), Buf.size(), 1, CinematicScriptFile);
	fclose(CinematicScriptFile);
}


int OpenVanillaMesh_Main(int argc, char** argv)
{
	if (argc < 3)
	{
		std::cerr << "Usage: GenerateCameraMesh %DonorFile% %OutputFile%" << std::endl;
		std::cerr << "Example: GenerateCameraMesh FlyByHuman.m2 FlyByGoblin.m2" << std::endl;
		return 1;
	}

	if (!ReadPoints())
	{
		std::cerr << "Invalid points.txt file" << std::endl;
		return 1;
	}

	std::string DonorFile = argv[1];
	OutputFile = argv[2];

	// argv[1] = m2 donor
	// argv[2] = out file

	FILE* m2File = fopen(DonorFile.c_str(), "rb");
	if (m2File == NULL)
	{
		return 1;
	}

	fseek(m2File, 0, SEEK_END);
	long fileSize = ftell(m2File);
	fseek(m2File, 0, SEEK_SET);

	char* m2Content = new char[fileSize];
	size_t ElemsReaded = fread(m2Content, fileSize, 1, m2File);
	assert(ElemsReaded == 1);
	fclose(m2File); m2File = NULL;

	ModelHeader* m2Header = (ModelHeader*)m2Content;

	std::cout << "M2 Version: " << m2Header->version << std::endl;
	std::cout << "M2 Type: " << m2Header->type << std::endl;

	char* NameData = m2Content + m2Header->nameOfs;
	ModelAnimation* AnimData = (ModelAnimation*) (m2Content + m2Header->ofsAnimations);
	ModelCameraDef* CameraData = (ModelCameraDef*) (m2Content + m2Header->ofsCameras);

	CameraData->pos.x = 0.0f;
	CameraData->pos.y = 0.0f;
	CameraData->pos.z = 0.0f;
	CameraData->target.x = 0.0f;
	CameraData->target.y = 0.0f;
	CameraData->target.z = 0.0f;

	// modify anim
	ModAnimationBlock(m2Content, CameraData->transPos, TargetBlockPos);
	ModAnimationBlock(m2Content, CameraData->transTarget, TargetBlockTarget);
	AnimData->timeEnd = Duration;

	std::cout << "Creating " << OutputFile << std::endl;
	FILE* OutFile = fopen(OutputFile.c_str(), "wb+");
	size_t Elems = fwrite(m2Content, fileSize, 1, OutFile);
	assert(Elems == 1);
	fclose(OutFile);

	delete[] m2Content;

	std::cout << "Generating CinematicPoints.sql" << std::endl;
	GenerateSQLScript();

	std::cout << "DONE!" << std::endl;
	return 0;
}



int CreateVanillaCameraMesh_Main(int argc, char** argv)
{
	//#TODO: Open input data file

	// for now, generate M2 file in memory

	std::vector<char> M2File;

	auto PutDataInFileAndTellOffset = [&M2File](const void* data, int Len) -> int
	{
		int CurrentSize = M2File.size();
		M2File.resize(CurrentSize + Len);
		memcpy(&M2File[CurrentSize], data, Len);
		return CurrentSize;
	};

	// reserve memory for header
	M2File.resize(sizeof(ModelHeader));

	ModelHeader CameraHeader;
	ZeroMemory(&CameraHeader, sizeof(ModelHeader));
	CameraHeader.id[0] = 'M';
	CameraHeader.id[1] = 'D';
	CameraHeader.id[2] = '2';
	CameraHeader.id[3] = '0';
	CameraHeader.version = 256;

	const char* Name = "TestFly";
	int NameLen = strlen(Name);
	CameraHeader.nameLength = NameLen;
	CameraHeader.nameOfs = PutDataInFileAndTellOffset(Name, NameLen + 1);

	ModelAnimation Anim;
	ZeroMemory(&Anim, sizeof(ModelAnimation));
	Anim.loopType = 1;
	Anim.flags = 32767;
	Anim.s[0] = -1;

	Anim.timeEnd = Duration;

	CameraHeader.nAnimations = 1;
	CameraHeader.ofsAnimations = PutDataInFileAndTellOffset(&Anim, sizeof(ModelAnimation));

	ModelAnimationLookup Lookup;
	Lookup.AnimIndex = 0;
	CameraHeader.nAnimationLookup = 1;
	CameraHeader.ofsAnimationLookup = PutDataInFileAndTellOffset(&Lookup, sizeof(ModelAnimationLookup));

	//#INFO: D component is missed. D component is probably uint8 or uint16 array with some numbers. It's hard to tell, should I generate them
	std::vector<uint32> DComponent;
	DComponent.resize(203);
	ZeroMemory(DComponent.data(), DComponent.size() * sizeof(uint32));
	CameraHeader.nD = 203;
	CameraHeader.ofsD = PutDataInFileAndTellOffset(DComponent.data(), DComponent.size() * sizeof(uint32));

	uint32 DefaultTime = 0;
	Vec3D NullVector = { 0.0f, 0.0f, 0.0f };
	Vec3D IdentityVector = { 1.0f, 1.0f, 1.0f };

	ModelBoneDef Bone;
	ZeroMemory(&Bone, sizeof(ModelBoneDef));
	Bone.animid = -1;
	Bone.parent = -1;

	Bone.translation.seq = -1;
	Bone.translation.nTimes = 1;
	Bone.translation.ofsTimes = PutDataInFileAndTellOffset(&DefaultTime, sizeof(uint32));
	Bone.translation.nKeys = 1;
	Bone.translation.ofsKeys = PutDataInFileAndTellOffset(&NullVector, sizeof(NullVector));

	Bone.rotation.seq = -1;
	Bone.rotation.nTimes = 1;
	Bone.rotation.ofsTimes = PutDataInFileAndTellOffset(&DefaultTime, sizeof(uint32));
	Bone.rotation.nKeys = 1;
	Bone.rotation.ofsKeys = PutDataInFileAndTellOffset(&NullVector, sizeof(NullVector));

	Bone.scaling.seq = -1;
	Bone.scaling.nTimes = 1;
	Bone.scaling.ofsTimes = PutDataInFileAndTellOffset(&DefaultTime, sizeof(uint32));
	Bone.scaling.nKeys = 1;
	Bone.scaling.ofsKeys = PutDataInFileAndTellOffset(&IdentityVector, sizeof(IdentityVector));

	CameraHeader.nBones = 1;
	CameraHeader.ofsBones = PutDataInFileAndTellOffset(&Bone, sizeof(Bone));

	ModelKeyBoneLookup KeyBoneLookup;
	KeyBoneLookup.Index = -1;
	CameraHeader.nKeyBoneLookup = 1;
	CameraHeader.ofsKeyBoneLookup = PutDataInFileAndTellOffset(&KeyBoneLookup, sizeof(ModelKeyBoneLookup));

	ModelView View[4];
	ZeroMemory(&View, sizeof(View));
	View[0].lod = 256;
	View[1].lod = 75;
	View[2].lod = 53;
	View[3].lod = 21;

	CameraHeader.nViews = 4;
	CameraHeader.ofsViews = PutDataInFileAndTellOffset(&View[0], sizeof(ModelView) * 4);

	ModelCameraDef Camera;
	ZeroMemory(&Camera, sizeof(Camera));
	Camera.id = -1;
	Camera.fov = 0.7853f;
	Camera.farclip = 27.77f;
	Camera.nearclip = 0.22f;

	int AnimPoints = CameraPoints.size();
	
	Camera.transPos.type = InterpolationMethod::Hermite;
	Camera.transPos.seq = -1;
	Camera.transPos.nRanges = 1;
	ModelAnimRange DefaultRange = { 0u, AnimPoints - 1 };
	Camera.transPos.ofsRanges = PutDataInFileAndTellOffset(&DefaultRange, sizeof(DefaultRange));
	Camera.transPos.nTimes = AnimPoints;

	std::vector<uint32> TimesArr;
	TimesArr.resize(AnimPoints);
	for (int i = 0; i < AnimPoints; i++)
	{
		TimesArr[i] = CameraPoints[i].Time;
	}

	Camera.transPos.ofsTimes = PutDataInFileAndTellOffset(TimesArr.data(), TimesArr.size() * sizeof(uint32));
	Camera.transPos.nKeys = AnimPoints;

	std::vector<Fvector> KeysArr;
	KeysArr.resize(AnimPoints * 3);
	for (int i = 0; i < AnimPoints; i++)
	{
		int baseIndex = i * 3;
		KeysArr[baseIndex] = CameraPoints[i].Position;
		KeysArr[baseIndex + 1] = CameraPoints[i].Position;
		KeysArr[baseIndex + 2] = CameraPoints[i].Position;
	}

	Camera.transPos.ofsKeys = PutDataInFileAndTellOffset(KeysArr.data(), KeysArr.size() * sizeof(Vec3D));

	Camera.transTarget.type = InterpolationMethod::Hermite;
	Camera.transTarget.seq = -1;
	Camera.transTarget.nRanges = 1;
	Camera.transTarget.ofsRanges = PutDataInFileAndTellOffset(&DefaultRange, sizeof(DefaultRange));
	Camera.transTarget.nTimes = AnimPoints;
	Camera.transTarget.ofsTimes = PutDataInFileAndTellOffset(TimesArr.data(), TimesArr.size() * sizeof(uint32));
	Camera.transTarget.nKeys = AnimPoints;

	std::vector<Fvector> KeysArr2;
	KeysArr2.resize(AnimPoints * 3);
	for (int i = 0; i < AnimPoints; i++)
	{
		int baseIndex = i * 3;
		KeysArr2[baseIndex] = CameraPoints[i].Target;
		KeysArr2[baseIndex + 1] = CameraPoints[i].Target;
		KeysArr2[baseIndex + 2] = CameraPoints[i].Target;
	}

	Camera.transTarget.ofsKeys = PutDataInFileAndTellOffset(KeysArr2.data(), KeysArr2.size() * sizeof(Vec3D));

	Camera.rot.type = InterpolationMethod::None;
	Camera.rot.seq = -1;
	Camera.rot.nTimes = 1;
	int Zero = 0;
	Camera.rot.ofsTimes = PutDataInFileAndTellOffset(&Zero, sizeof(uint32));

	CameraHeader.nCameras = 1;
	CameraHeader.ofsCameras = PutDataInFileAndTellOffset(&Camera, sizeof(Camera));

	CameraHeader.nCameraLookup = 1;
	uint16_t DefaultCameraLookup = 0xffff;
	CameraHeader.ofsCameraLookup = PutDataInFileAndTellOffset(&DefaultCameraLookup, sizeof(DefaultCameraLookup));

	memcpy(M2File.data(), &CameraHeader, sizeof(CameraHeader));

	FILE* OutFile = fopen("TestFly.m2", "wb+");
	size_t Elems = fwrite(M2File.data(), M2File.size(), 1, OutFile);
	assert(Elems == 1);
	fclose(OutFile);

	return 0;
}