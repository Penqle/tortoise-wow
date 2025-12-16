#include "PeUtils.h"

DWORD align(DWORD size, DWORD align, DWORD addr) {
	if (!(size % align))
		return addr + size;
	return addr + (size / align + 1) * align;
}

// Export
PortableExecutable::Export::Export() {}

PortableExecutable::Export::Export(DWORD dwType, const std::string sName, DWORD dwVirtualAddress)
	: m_ordinal(0), m_type(dwType), m_name(sName), m_virtualAddress(dwVirtualAddress) 
{

}

WORD& PortableExecutable::Export::Ordinal() 
{
	return m_ordinal;
}

DWORD& PortableExecutable::Export::Type() 
{
	return m_type;
}

std::string& PortableExecutable::Export::Name() 
{
	return m_name;
}

DWORD& PortableExecutable::Export::VirtualAddress() 
{
	return m_virtualAddress;
}

const WORD& PortableExecutable::Export::Ordinal() const 
{
	return m_ordinal;
}

const DWORD& PortableExecutable::Export::Type() const 
{
	return m_type;
}

const std::string& PortableExecutable::Export::Name() const 
{
	return m_name;
}

const DWORD& PortableExecutable::Export::VirtualAddress() const 
{
	return m_virtualAddress;
}

// EAT
PortableExecutable::ExportAddressTable::ExportAddressTable() {}

PortableExecutable::ExportAddressTable::ExportAddressTable(DWORD dwVirtualAddress, DWORD dwSize, const IMAGE_EXPORT_DIRECTORY& imageExportDirectory)
	: m_virtualAddress(dwVirtualAddress), m_size(dwSize), m_imageExportDirectory(imageExportDirectory) 
{

}

DWORD& PortableExecutable::ExportAddressTable::VirtualAddress() 
{
	return m_virtualAddress;
}

DWORD& PortableExecutable::ExportAddressTable::Size() 
{
	return m_size;
}

IMAGE_EXPORT_DIRECTORY& PortableExecutable::ExportAddressTable::ImageExportDirectory() 
{
	return m_imageExportDirectory;
}

std::vector< PortableExecutable::Export >& PortableExecutable::ExportAddressTable::Exports() 
{
	return m_exports;
}

const DWORD& PortableExecutable::ExportAddressTable::VirtualAddress() const 
{
	return m_virtualAddress;
}

const DWORD& PortableExecutable::ExportAddressTable::Size() const 
{
	return m_size;
}

const IMAGE_EXPORT_DIRECTORY& PortableExecutable::ExportAddressTable::ImageExportDirectory() const 
{
	return m_imageExportDirectory;
}

const std::vector< PortableExecutable::Export >& PortableExecutable::ExportAddressTable::Exports() const 
{
	return m_exports;
}

// Import
PortableExecutable::Import::Import() {}

DWORD& PortableExecutable::Import::Ordinal() 
{
	return m_ordinal;
}

const DWORD& PortableExecutable::Import::Ordinal() const 
{
	return m_ordinal;
}

std::string& PortableExecutable::Import::Name() 
{
	return m_name;
}

DWORD& PortableExecutable::Import::OriginalVirtualAddressLocation() 
{
	return m_originalVirtualAddressLocation;
}

DWORD& PortableExecutable::Import::Type() 
{
	return m_type;
}

PortableExecutable::ImageImportDescriptor::ImageImportDescriptor(const IMAGE_IMPORT_DESCRIPTOR& imageImportDescriptor, DWORD dwNumberOfImports) 
{
	m_imageImportDescriptor = imageImportDescriptor;
	m_numberOfImports = dwNumberOfImports;
}

DWORD& PortableExecutable::ImageImportDescriptor::NumberOfImports() 
{
	return m_numberOfImports;
}

std::vector< PortableExecutable::Import >& PortableExecutable::ImageImportDescriptor::Imports() 
{
	return m_imports;
}

DWORD PortableExecutable::ImageImportDescriptor::GetOriginalFirstThunk() const 
{
	return m_imageImportDescriptor.OriginalFirstThunk;
}

std::string& PortableExecutable::ImageImportDescriptor::Name() 
{
	return m_moduleName;
}

DWORD PortableExecutable::ImageImportDescriptor::GetFirstThunk() const 
{
	return m_imageImportDescriptor.FirstThunk;
}

// IAT
PortableExecutable::ImportAddressTable::ImportAddressTable() : m_virtualAddress(-1), m_size(-1) 
{

}

PortableExecutable::ImportAddressTable::ImportAddressTable(DWORD dwVirtualAddress, DWORD dwVirtualSize)
	: m_virtualAddress(dwVirtualAddress), m_size(dwVirtualSize) 
{

}

// IAT
const DWORD& PortableExecutable::ImportAddressTable::VirtualAddress() const 
{
	return m_virtualAddress;
}

const DWORD& PortableExecutable::ImportAddressTable::Size() const 
{
	return m_size;
}

DWORD& PortableExecutable::ImportAddressTable::VirtualAddress() 
{
	return m_virtualAddress;
}

DWORD& PortableExecutable::ImportAddressTable::Size() 
{
	return m_size;
}

std::vector< PortableExecutable::ImageImportDescriptor >& PortableExecutable::ImportAddressTable::Modules() 
{
	return m_modules;
}

BOOL PortableExecutable::ImportAddressTable::operator()(const PortableExecutable::Import& i1, const PortableExecutable::Import& i2) const 
{
	return i1.Ordinal() < i2.Ordinal();
}

// PE MAIN
PortableExecutable::PortableExecutable(LPCSTR lpSzFilename) : m_filename(lpSzFilename)
{
	//m_stream.exceptions( std::fstream::failbit | std::fstream::badbit );
	m_stream.open(m_filename.c_str(), std::ios::in | std::ios::out | std::ios::ate | std::ios::binary);

	if (!m_stream.is_open()) {
		throw Exception("File cannot be opened, make sure it does exist otherwise it's not already open with writing permissions.");
	}

	m_stream.seekg(0, std::ios::beg);
	m_stream.read((char*)&m_imageDosHeader, sizeof(IMAGE_DOS_HEADER));

	if (m_imageDosHeader.e_magic != IMAGE_DOS_SIGNATURE) 
	{
		throw Exception("This file does not contain a valid dos signature.");
	}

	m_stream.seekg(m_imageDosHeader.e_lfanew - sizeof(IMAGE_DOS_HEADER), std::ios_base::cur);
	m_stream.read((char*)&m_imageNtHeaders, sizeof(IMAGE_NT_HEADERS));

	if (m_imageNtHeaders.Signature != IMAGE_NT_SIGNATURE) 
	{
		throw Exception("This file does not contain a valid nt signature.");
	}

	IMAGE_SECTION_HEADER structSectionHeader;
	SectionHeader currentSectionHeader;
	for (int i = 0; i < m_imageNtHeaders.FileHeader.NumberOfSections; ++i) {
		m_stream.read((char*)&structSectionHeader, sizeof(IMAGE_SECTION_HEADER));
		currentSectionHeader = structSectionHeader;
		m_sectionHeaders.push_back(currentSectionHeader);
	}
}

PortableExecutable::~PortableExecutable() 
{
	m_stream.close();
}

std::vector<PortableExecutable::SectionHeader>& PortableExecutable::SectionHeaders() 
{
	return m_sectionHeaders;
}

DWORD PortableExecutable::RvaToOffset(DWORD dwVirtualAddress) const {
	/* Browsing each section header until its base virtual address is above or equal to the specified one */
	int i = 0;
	DWORD dwOffset = -1;

	while (i < m_imageNtHeaders.FileHeader.NumberOfSections && m_sectionHeaders[i].GetVirtualAddress() <= dwVirtualAddress) {
		i++;
	}

	/* this is the previous section that contains the specified virtual address */
	--i;

	dwOffset = m_sectionHeaders[i].GetPointerToRawData() + (dwVirtualAddress - m_sectionHeaders[i].GetVirtualAddress());

	return dwOffset;
}

DWORD PortableExecutable::OffsetToRva(DWORD dwPointerToRawData) const {
	/* Browsing each sectuin header until its pointer to raw data is above or equal to the specified one */
	int i = 0;
	DWORD dwVirtualAddress = -1;
	while (i < m_imageNtHeaders.FileHeader.NumberOfSections && m_sectionHeaders[i].GetPointerToRawData() <= dwPointerToRawData) {
		i++;
	}

	--i;

	dwVirtualAddress = m_sectionHeaders[i].GetVirtualAddress() + (dwPointerToRawData - m_sectionHeaders[i].GetPointerToRawData());

	return dwVirtualAddress;
}

PortableExecutable::ImportAddressTable PortableExecutable::GetImportAddressTable()
{

	ImportAddressTable iat;

	try 
	{

		if (m_imageNtHeaders.OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_IMPORT].VirtualAddress) 
		{
			char ch; /* iterate through the string below */
			std::string currentName; /* Concerns the imported function either module name */



			iat.VirtualAddress() = m_imageNtHeaders.OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_IMPORT].VirtualAddress;
			iat.Size() = m_imageNtHeaders.OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_IMPORT].Size;


			IMAGE_IMPORT_DESCRIPTOR CurrentImageImportDescriptor;
			DWORD dwIatOffset = RvaToOffset(iat.VirtualAddress());
			if (dwIatOffset >= 0) {


				//std::cout << "Offset of IAT is " << std::hex << dwIatOffset << std::endl;

				m_stream.clear();
				m_stream.seekg(dwIatOffset, std::ios_base::beg);
				//std::cout << "Will read at " << m_stream.tellg() << std::endl;
				/* Reading each file descriptor */
				m_stream.read((char*)&CurrentImageImportDescriptor, sizeof(IMAGE_IMPORT_DESCRIPTOR));

				while (CurrentImageImportDescriptor.OriginalFirstThunk != 0 ||
					CurrentImageImportDescriptor.FirstThunk != 0 ||
					CurrentImageImportDescriptor.Name != 0 ||
					CurrentImageImportDescriptor.TimeDateStamp != 0) {

					/* Retrieving the module name */


					iat.Modules().push_back(ImageImportDescriptor(CurrentImageImportDescriptor, 0));

					/* Retrieving the module name */
					std::streamoff dwSaveOffsetDescriptors = m_stream.tellg();

					m_stream.seekg(RvaToOffset(CurrentImageImportDescriptor.Name), std::ios_base::beg);

					m_stream.read(&ch, sizeof(char));
					while (ch != '\0') {
						iat.Modules().back().Name() += ch;
						m_stream.read(&ch, sizeof(char));
					}

					//iat.Modules().back().Name() += '\0';

					//std::cout << "Current Module Name : " << iat.Modules().back().Name()  << std::endl;

					/* Seeking to the import's offsets */
					//std::cout << "Will seek at " << RvaToOffset(CurrentImageImportDescriptor.OriginalFirstThunk) << std::endl;
					m_stream.seekg(RvaToOffset(CurrentImageImportDescriptor.OriginalFirstThunk), std::ios_base::beg);

					//std::cout << "FirstThunk's offset: " << RvaToOffset(CurrentImageImportDescriptor.FirstThunk) << std::endl;

					std::streamoff dwCurrentImport;


					m_stream.read((char*)&dwCurrentImport, sizeof(DWORD));

					while (dwCurrentImport) 
					{

						Import currentImport;
						std::streamoff dwSaveOffsetImports = m_stream.tellg();
						currentImport.OriginalVirtualAddressLocation() = (DWORD)dwSaveOffsetImports - sizeof(DWORD);

						/* Is it an ordinal either name importation? */
						if (dwCurrentImport & 0x80000000) {
							/* Ordinal */
							dwCurrentImport ^= 0x80000000;
							std::stringstream convertStream;
							convertStream << "#" << dwCurrentImport;
							convertStream >> currentImport.Name();
							currentImport.Ordinal() = dwCurrentImport & 0xffff;

						}
						else {
							/* importation by name */
							//std::cout << "CURRENT IMPORT IS " << std::hex << dwCurrentImport << " AND EQUIVALENT OFFSET :" << RvaToOffset(dwCurrentImport) << std::endl;

							WORD dwOrdinal;
							m_stream.clear();
							m_stream.seekg(RvaToOffset((DWORD)dwCurrentImport), std::ios_base::beg);

							m_stream.read((char*)&dwOrdinal, sizeof(WORD));
							currentImport.Ordinal() = dwOrdinal;

							m_stream.read(&ch, sizeof(char));
							while (ch != '\0') {
								currentImport.Name() += ch;
								m_stream.read(&ch, sizeof(char));
							}
							//currentImport.Name() += '\0';


						}

						//std::cout << "\tCurrent Import Name : " << currentImport.Name() << std::endl;

						/* Saving the import */
						iat.Modules().back().NumberOfImports()++;
						iat.Modules().back().Imports().push_back(currentImport);

						/* Rolling back to the offset of import's array */
						m_stream.seekg(dwSaveOffsetImports, std::ios_base::beg);

						/* Reading the next Import VA */
						m_stream.read((char*)&dwCurrentImport, sizeof(DWORD));

					}

					/* Sorting the vector of imports */
					std::sort(iat.Modules().back().Imports().begin(), iat.Modules().back().Imports().end(), iat);



					/* Once we've read each imports of the current image import descriptor, we switch to the next one */
					m_stream.clear();
					m_stream.seekg(dwSaveOffsetDescriptors, std::ios_base::beg);

					/* reading the new desriptor */
					m_stream.read((char*)&CurrentImageImportDescriptor, sizeof(IMAGE_IMPORT_DESCRIPTOR));

				}
			}
		}
	}
	catch (const std::ios_base::failure&) 
	{
		//std::cout << "An exception occured: " << e.what() << std::endl;
		::exit(EXIT_FAILURE);
	}

	return iat;
}

PortableExecutable::ExportAddressTable PortableExecutable::GetExportAddressTable() const {

	ExportAddressTable eat;

	if (m_imageNtHeaders.OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_EXPORT].VirtualAddress) {

		IMAGE_EXPORT_DIRECTORY imageExportDirectory;
		DWORD dwEatOffset = RvaToOffset(m_imageNtHeaders.OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_EXPORT].VirtualAddress);
		m_stream.seekg(dwEatOffset, std::ios_base::beg);
		m_stream.read((char*)&imageExportDirectory, sizeof(IMAGE_EXPORT_DIRECTORY));


		eat.VirtualAddress() = m_imageNtHeaders.OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_EXPORT].VirtualAddress;
		eat.Size() = m_imageNtHeaders.OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_EXPORT].Size;
		eat.ImageExportDirectory() = imageExportDirectory;

		std::vector< std::string > names;
		std::vector< DWORD > virtualAddresses;
		std::vector< WORD > indexesOfNames;

		DWORD dwNumberOfExports = imageExportDirectory.NumberOfFunctions;
		DWORD dwNumberOfNames = imageExportDirectory.NumberOfNames;
		//DWORD dwNumberOfOrdinals = dwNumberOfExports - dwNumberOfNames;

		/* First step: retrieve each ordinal */
		m_stream.seekg(RvaToOffset(imageExportDirectory.AddressOfNameOrdinals));

		WORD wCurrentIndex;
		for (unsigned int i = 0; i < dwNumberOfNames; ++i) 
		{
			m_stream.read((char*)&wCurrentIndex, sizeof(WORD));

			//std::cout << "Current ordinal is " << wCurrentIndex << std::endl;

			indexesOfNames.push_back(wCurrentIndex);
		}

		/* Second step: retrieve each name */
		m_stream.seekg(RvaToOffset(imageExportDirectory.AddressOfNames));
		DWORD dwCurrentRvaName;
		std::string currentName;
		char ch;
		for (unsigned int i = 0; i < dwNumberOfNames; i++) {

			m_stream.read((char*)&dwCurrentRvaName, sizeof(DWORD));

			std::streamoff dwSaveOffset = m_stream.tellg();

			m_stream.seekg(RvaToOffset(dwCurrentRvaName), std::ios_base::beg);

			/* Reading the name until we find a \0 */
			m_stream.read(&ch, sizeof(char));
			currentName = "";
			while (ch != '\0') 
			{
				currentName += ch;
				m_stream.read(&ch, sizeof(char));
			}
			//currentName += '\0';

			//std::cout << "Current name is " << currentName << " at " << indexesOfNames.at(i) << std::endl;

			names.push_back(currentName);

			m_stream.seekg(dwSaveOffset, std::ios_base::beg);


		}


		/* Storing each export */
		m_stream.seekg(RvaToOffset(imageExportDirectory.AddressOfFunctions));
		std::vector< WORD >::iterator index;
		DWORD dwCurrentAddress;

		std::stringstream convertStream;

		for (unsigned int i = 0; i < dwNumberOfExports; ++i) {
			Export currentExport;

			m_stream.read((char*)&dwCurrentAddress, sizeof(DWORD));

			/* Is the address valid? */
			if (dwCurrentAddress) {

				currentExport.Ordinal() = i + 1;
				currentExport.VirtualAddress() = dwCurrentAddress;

				if ((index = std::find(indexesOfNames.begin(), indexesOfNames.end(), (WORD)i)) != indexesOfNames.end()) {
					/* It's an export by name */
					currentExport.Type() = Export::TYPE_NAME;
					currentExport.Name() = names.at(index - indexesOfNames.begin());
					currentExport.VirtualAddress() = dwCurrentAddress;


				}
				else 
				{

					std::stringstream convertStream;

					convertStream << "#" << i + 1;
					convertStream >> currentExport.Name();

					/* It's an export by ordinal */
					currentExport.Type() = Export::TYPE_ORDINAL;

				}

				eat.Exports().push_back(currentExport);
			}
		}
	}

	return eat;
}

VOID PortableExecutable::AddSection(LPSTR name, DWORD characteristics, DWORD virtualSize, DWORD rawSize) 
{
	PortableExecutable::SectionHeader sectionHeader;

	if (!(m_sectionHeaders[this->m_imageNtHeaders.FileHeader.NumberOfSections - 1].GetVirtualSize() % this->m_imageNtHeaders.OptionalHeader.SectionAlignment))
	{
		sectionHeader.SetVirtualAddress(m_sectionHeaders[this->m_imageNtHeaders.FileHeader.NumberOfSections - 1].GetVirtualSize()
			+ m_sectionHeaders[this->m_imageNtHeaders.FileHeader.NumberOfSections - 1].GetVirtualAddress());
	}
	else 
	{
		sectionHeader.SetVirtualAddress(m_sectionHeaders[this->m_imageNtHeaders.FileHeader.NumberOfSections - 1].GetVirtualAddress()
			+ ((m_sectionHeaders[this->m_imageNtHeaders.FileHeader.NumberOfSections - 1].GetVirtualSize() / this->m_imageNtHeaders.OptionalHeader.SectionAlignment) + 1) * this->m_imageNtHeaders.OptionalHeader.SectionAlignment);
	}
	DWORD newVirtualSize = align(virtualSize, this->m_imageNtHeaders.OptionalHeader.SectionAlignment, 0);
	DWORD newRawSize = align(rawSize, this->m_imageNtHeaders.OptionalHeader.FileAlignment, 0);

	sectionHeader.SetName(name);
	sectionHeader.SetCharacteristics(0xE0000040);
	sectionHeader.SetVirtualSize(newVirtualSize);
	//sectionHeader.SetVirtualAddress(this->m_imageNtHeaders.OptionalHeader.SizeOfImage);
	sectionHeader.SetSizeOfRawData(newRawSize);
	sectionHeader.SetPointerToRelocations(0);
	sectionHeader.SetPointerToLineNumbers(0);
	sectionHeader.SetNumberOfRelocations(0);
	sectionHeader.SetNumberOfLineNumbers(0);
	AddSection(sectionHeader);
}

VOID PortableExecutable::AddSection(PortableExecutable::SectionHeader& newSectionHeader) 
{
	DWORD dwRawSectionOffset = (DWORD)GetFileSize();

	/* Aligns dwRawSectionOffset to OptionalHeader.FileAlignment */
	dwRawSectionOffset += this->m_imageNtHeaders.OptionalHeader.FileAlignment - (dwRawSectionOffset % this->m_imageNtHeaders.OptionalHeader.FileAlignment);

	/* Does the whole header's length overflows OptionalHeader.SizeOfHeaders? */
	if (
		(sizeof(IMAGE_DOS_HEADER) + sizeof(IMAGE_NT_HEADERS) + (this->m_imageNtHeaders.FileHeader.NumberOfSections * sizeof(IMAGE_SECTION_HEADER)))
		> this->m_imageNtHeaders.OptionalHeader.SizeOfHeaders
		) {

		/* If it's the case, add free space */
		AddFreeSpaceAfterHeaders(this->m_imageNtHeaders.OptionalHeader.FileAlignment);

		/* Adding 'FileAlignment' value to SizeOfHeaders fields then */
		this->m_imageNtHeaders.OptionalHeader.SizeOfHeaders += this->m_imageNtHeaders.OptionalHeader.FileAlignment;

	}

	//newSectionHeader.SetPointerToRawData(dwRawSectionOffset);
	newSectionHeader.SetPointerToRawData(align(this->m_sectionHeaders[this->m_imageNtHeaders.FileHeader.NumberOfSections - 1].GetSizeOfRawData(), this->m_imageNtHeaders.OptionalHeader.FileAlignment, this->m_sectionHeaders[this->m_imageNtHeaders.FileHeader.NumberOfSections - 1].GetPointerToRawData()));

	/* Adding the new section header */
	this->m_sectionHeaders.push_back(newSectionHeader);

	/* Incrementing the 'NumberOfSections' field */
	++this->m_imageNtHeaders.FileHeader.NumberOfSections;

	/* Adding to SizeOfImage the SectionAlignment value */
	//this->m_imageNtHeaders.OptionalHeader.SizeOfImage += this->m_imageNtHeaders.OptionalHeader.SectionAlignment;
	this->m_imageNtHeaders.OptionalHeader.SizeOfImage = newSectionHeader.GetVirtualAddress() + newSectionHeader.GetVirtualSize();

	/* Rewriting the whole headers */
	m_stream.seekg(this->m_imageDosHeader.e_lfanew, std::ios::beg);
	m_stream.write((const char*)&this->m_imageNtHeaders, sizeof(IMAGE_NT_HEADERS));

	/* Rewriting the section headers then */
	std::vector<PortableExecutable::SectionHeader>::iterator it =
		this->m_sectionHeaders.begin();

	while (it != this->m_sectionHeaders.end()) {
		m_stream.write((const char*)&it->ImageSectionHeader(), sizeof(IMAGE_SECTION_HEADER));
		++it;
	}

	/* Finally adding 'FileAlignment' bytes to the end of the file,
	which actually corresponds to the section's memory space! */
	m_stream.seekg(this->m_sectionHeaders.at(this->m_sectionHeaders.size() - 1).GetPointerToRawData(), std::ios::beg);

	char* bytes = new char[newSectionHeader.GetSizeOfRawData()];
	::memset(bytes, '\0', newSectionHeader.GetSizeOfRawData());
	m_stream.write(bytes, newSectionHeader.GetSizeOfRawData());
	delete[] bytes;
}

std::streamoff PortableExecutable::GetFileSize() const 
{
	std::streamoff dwCurrentPosition, dwEnd;
	dwCurrentPosition = m_stream.tellg();
	m_stream.seekg(0, std::ios::end);
	dwEnd = m_stream.tellg();

	/* Restores to the original position */
	m_stream.seekg(dwCurrentPosition, std::ios::beg);
	return dwEnd;
}

BOOL PortableExecutable::AddFreeSpaceAfterHeaders(DWORD dwFreeSpace) 
{
	BOOL ret = FALSE;
	std::streamoff dwCurrentPosition = m_stream.tellg();

	/* dwFreeSpace has to be aligned on OptionalHeader.FileAlignment */
	if (dwFreeSpace % this->m_imageNtHeaders.OptionalHeader.FileAlignment == 0) {

		/* Adding some free space at the end of file */
		Append(dwFreeSpace, 0x00);

		char* tmpBuf = new char[m_imageNtHeaders.OptionalHeader.FileAlignment];
		DWORD dwFileSize = (DWORD)GetFileSize();

		/* Moving bytes from the end to after headers */
		for (int i = 0, l = dwFileSize - m_imageNtHeaders.OptionalHeader.SizeOfHeaders; i < l; i += m_imageNtHeaders.OptionalHeader.FileAlignment) {
			/* Reading a block... */
			m_stream.seekg(dwFileSize - dwFreeSpace - i, SEEK_SET);
			m_stream.read(tmpBuf, m_imageNtHeaders.OptionalHeader.FileAlignment);

			/* ... And copying it FileAlignment bytes farther */
			m_stream.seekg(dwFreeSpace - 1, std::ios::cur);
			m_stream.write(tmpBuf, m_imageNtHeaders.OptionalHeader.FileAlignment);
		}

		/* Increasing the pointer to raw data of each section (because of the moving) */
		for (int i = this->m_imageNtHeaders.FileHeader.NumberOfSections - 1; i >= 0; i--) {
			this->m_sectionHeaders[i].SetPointerToRawData(this->m_sectionHeaders[i].GetPointerToRawData() + dwFreeSpace);
		}

		delete[] tmpBuf;
	}

	return ret;

}

VOID PortableExecutable::Append(DWORD dwNumberOfBytes, BYTE cValue) const 
{
	std::streamoff dwCurrentPosition;
	dwCurrentPosition = m_stream.tellg();
	m_stream.seekg(0, std::ios::end);

	char* memorySpace = new char[dwNumberOfBytes];

	::memset(memorySpace, cValue, dwNumberOfBytes);


	m_stream.write(memorySpace, dwNumberOfBytes);

	delete[] memorySpace;

	/* Restores to the original position */
	m_stream.seekg(dwCurrentPosition, std::ios::beg);
}

VOID PortableExecutable::UpdateSectionHeaders() 
{
	std::streamoff dwCurrentPosition;
	dwCurrentPosition = m_stream.tellg();

	/* Seeking at the section headers to rewrite all of them */
	m_stream.seekg(this->m_imageDosHeader.e_lfanew + sizeof(IMAGE_FILE_HEADER) + this->m_imageNtHeaders.FileHeader.SizeOfOptionalHeader, std::ios::beg);

	/* Rewriting */
	for (int i = 0; i < this->m_imageNtHeaders.FileHeader.NumberOfSections; i++) {
		m_stream.write((char*)&m_sectionHeaders.at(i), sizeof(IMAGE_SECTION_HEADER));
	}
}

// Sections
PortableExecutable::SectionHeader::SectionHeader() {}

PortableExecutable::SectionHeader& PortableExecutable::SectionHeader::operator=(const IMAGE_SECTION_HEADER& structImageSectionHeader) 
{
	m_imageSectionHeader = structImageSectionHeader;
	return *this;
}

std::string PortableExecutable::SectionHeader::GetName() const 
{
	return std::string((const char*)m_imageSectionHeader.Name);
}

DWORD PortableExecutable::SectionHeader::GetVirtualSize() const 
{
	return m_imageSectionHeader.Misc.VirtualSize;
}

DWORD PortableExecutable::SectionHeader::GetVirtualAddress() const 
{
	return m_imageSectionHeader.VirtualAddress;
}

DWORD PortableExecutable::SectionHeader::GetSizeOfRawData() const 
{
	return m_imageSectionHeader.SizeOfRawData;
}

DWORD PortableExecutable::SectionHeader::GetPointerToRawData() const 
{
	return m_imageSectionHeader.PointerToRawData;
}

DWORD PortableExecutable::SectionHeader::GetPointerToRelocations() const 
{
	return m_imageSectionHeader.PointerToRelocations;
}

DWORD PortableExecutable::SectionHeader::GetPointerToLineNumbers() const 
{
	return m_imageSectionHeader.PointerToLinenumbers;
}

WORD PortableExecutable::SectionHeader::GetNumberOfRelocations() const 
{
	return m_imageSectionHeader.NumberOfRelocations;
}

WORD PortableExecutable::SectionHeader::GetNumberOfLineNumbers() const 
{
	return m_imageSectionHeader.NumberOfLinenumbers;
}

DWORD PortableExecutable::SectionHeader::GetCharacteristics() const 
{
	return m_imageSectionHeader.Characteristics;
}

VOID PortableExecutable::SectionHeader::SetName(LPSTR szNewName) 
{
	memset(m_imageSectionHeader.Name, '\0', 8);
	::strcpy_s((char*)m_imageSectionHeader.Name, 7, (LPSTR)szNewName);
	m_imageSectionHeader.Name[7] = '\0';
}

VOID PortableExecutable::SectionHeader::SetVirtualSize(DWORD dwNewVirtualSize) 
{
	m_imageSectionHeader.Misc.VirtualSize = dwNewVirtualSize;
}

VOID PortableExecutable::SectionHeader::SetVirtualAddress(DWORD dwNewVirtualAddress) 
{
	m_imageSectionHeader.VirtualAddress = dwNewVirtualAddress;
}

VOID PortableExecutable::SectionHeader::SetSizeOfRawData(DWORD dwNewSizeOfRawData) 
{
	m_imageSectionHeader.SizeOfRawData = dwNewSizeOfRawData;
}

VOID PortableExecutable::SectionHeader::SetPointerToRawData(DWORD dwNewPointerToRawData) 
{
	m_imageSectionHeader.PointerToRawData = dwNewPointerToRawData;
}

VOID PortableExecutable::SectionHeader::SetPointerToRelocations(DWORD dwNewPointerToRelocations) 
{
	m_imageSectionHeader.PointerToRelocations = dwNewPointerToRelocations;
}

VOID PortableExecutable::SectionHeader::SetPointerToLineNumbers(DWORD dwPointerToLineNumbers) 
{
	m_imageSectionHeader.PointerToLinenumbers = dwPointerToLineNumbers;
}

VOID PortableExecutable::SectionHeader::SetNumberOfRelocations(WORD wNewNumberOfRelocations) 
{
	m_imageSectionHeader.NumberOfRelocations = wNewNumberOfRelocations;
}

VOID PortableExecutable::SectionHeader::SetNumberOfLineNumbers(WORD wNewNumberOfLineNumbers) 
{
	m_imageSectionHeader.NumberOfLinenumbers = wNewNumberOfLineNumbers;
}

VOID PortableExecutable::SectionHeader::SetCharacteristics(DWORD dwNewCharacteristics) 
{
	m_imageSectionHeader.Characteristics = dwNewCharacteristics;
}
