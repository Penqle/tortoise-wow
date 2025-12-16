// Giperion for Turtle WoW
#include <windows.h>
#include <wininet.h>
#include <string>
#include <thread>
#include <assert.h>
#include <filesystem>
#include <tchar.h>
#include "ScopedHandle.h"
#include "Downloader.h"
#include "Common.h"

#define fs std::filesystem
#define MAGIC_SIG 0x123456

void WriteLog(const TCHAR* format, ...);

class InternetDownloader : public IDownloader
{
public:
	InternetDownloader();
	virtual ~InternetDownloader();

	void DeInit();


//IDownloader interface START
	virtual bool Init(const std::string& InHostPath) override;
	virtual bool DownloadAsync() override;
	virtual void CancelDownload() override;
//IDownloader interface END

	void ProcessAsyncResult(DWORD_PTR dwResult, DWORD ErrCode);

	void DownloadThreadProc();

	void AbortDownload();
	void DownloadComplete();

	DWORD MagicShit = MAGIC_SIG;
	volatile DWORD bShouldDownload = TRUE;

	HINTERNET hInternet = NULL;
	HINTERNET hConnection = NULL;

	std::string HostPath;

	std::thread* DownloadThread = nullptr;
	bool bOperationComplete = false;
};

DWORD DBG_TotalBytesReceived = 0;

void CALLBACK StatusCallBack(
	HINTERNET hInternet,
	DWORD_PTR dwContext,
	DWORD dwInternetStatus,
	LPVOID lpvStatusInformation,
	DWORD dwStatusInformationLength
)
{
	InternetDownloader* Downloader = nullptr;
	if (dwContext != NULL)
	{
		Downloader = (InternetDownloader*)dwContext;
		
		// If that failed, that means dwContext is NOT a InternetDownloader, and we are in trouble
		assert(Downloader->MagicShit == MAGIC_SIG);
	}

#ifdef _DEBUG
	WriteLog(_T("StatusCallback (%d): info 0x%p size: %u, context: 0x%p"), 
		dwInternetStatus, lpvStatusInformation, dwStatusInformationLength, dwContext);
#endif

	switch (dwInternetStatus)
	{
	case INTERNET_STATUS_COOKIE_SENT:
	{
#ifdef _DEBUG
		WriteLog(_T("StatusCallback CookieSent: info 0x%p size: %u, context: 0x%p"),
			lpvStatusInformation, dwStatusInformationLength, dwContext);
#endif
	}
		break;
	case INTERNET_STATUS_COOKIE_RECEIVED:
	{
#ifdef _DEBUG
		WriteLog(_T("StatusCallback CookieReceived: info 0x%p size: %u, context: 0x%p"),
			lpvStatusInformation, dwStatusInformationLength, dwContext);
#endif
	}
	break;
	case INTERNET_STATUS_COOKIE_HISTORY:
	{
#ifdef _DEBUG
		WriteLog(_T("StatusCallback CookieHistory: info 0x%p size: %u, context: 0x%p"),
			lpvStatusInformation, dwStatusInformationLength, dwContext);
#endif
	}
	break;
	case INTERNET_STATUS_CLOSING_CONNECTION:
	{
#ifdef _DEBUG
		WriteLog(_T("StatusCallback ClosingConnection: info 0x%p size: %u, context: 0x%p"),
			lpvStatusInformation, dwStatusInformationLength, dwContext);
#endif
	}
	break;
	case INTERNET_STATUS_CONNECTED_TO_SERVER:
	{
#ifdef _DEBUG
		WriteLog(_T("StatusCallback ConnectedToServer: info 0x%p size: %u, context: 0x%p"),
			lpvStatusInformation, dwStatusInformationLength, dwContext);
#endif
	}
	break;
	case INTERNET_STATUS_CONNECTING_TO_SERVER:
	{
#ifdef _DEBUG
		WriteLog(_T("StatusCallback ConnectingToServer: info 0x%p size: %u, context: 0x%p"),
			lpvStatusInformation, dwStatusInformationLength, dwContext);
#endif
	}
	break;
	case INTERNET_STATUS_CONNECTION_CLOSED:
	{
#ifdef _DEBUG
		WriteLog(_T("StatusCallback ConnectionClosed: info 0x%p size: %u, context: 0x%p"),
			lpvStatusInformation, dwStatusInformationLength, dwContext);
#endif
	}
	break;
	case INTERNET_STATUS_HANDLE_CLOSING:
	{
#ifdef _DEBUG
		WriteLog(_T("StatusCallback HandleClosing: info 0x%p size: %u, context: 0x%p"),
			lpvStatusInformation, dwStatusInformationLength, dwContext);
#endif
		HINTERNET* pConnection = (HINTERNET*)lpvStatusInformation;
		if (pConnection != nullptr)
		{
			if (Downloader->hConnection == *pConnection)
			{
				Downloader->hConnection = NULL;
				Downloader->AbortDownload();
			}
		}
	}
	break;
	case INTERNET_STATUS_HANDLE_CREATED:
	{
#ifdef _DEBUG
		WriteLog(_T("StatusCallback HandleCreated: info 0x%p size: %u, context: 0x%p"),
			lpvStatusInformation, dwStatusInformationLength, dwContext);
#endif
#if 0
		if (Downloader->hConnection == NULL)
		{
			HINTERNET* pConnection = (HINTERNET*)lpvStatusInformation;
			Downloader->hConnection = *pConnection;
		}
#endif
	}
	break;
	case INTERNET_STATUS_INTERMEDIATE_RESPONSE:
	{
#ifdef _DEBUG
		WriteLog(_T("StatusCallback IntermediateResponse: info 0x%p size: %u, context: 0x%p"),
			lpvStatusInformation, dwStatusInformationLength, dwContext);
#endif
	}
	break;
	case INTERNET_STATUS_RECEIVING_RESPONSE:
	{
#ifdef _DEBUG
		WriteLog(_T("StatusCallback ReceivingResponse: info 0x%p size: %u, context: 0x%p"),
			lpvStatusInformation, dwStatusInformationLength, dwContext);
#endif
	}
	break;
	case INTERNET_STATUS_RESPONSE_RECEIVED:
	{
#ifdef _DEBUG
		WriteLog(_T("StatusCallback ResponseReceived: info 0x%p size: %u, context: 0x%p"),
			lpvStatusInformation, dwStatusInformationLength, dwContext);
#endif
		DWORD* pBytesReceived = (DWORD*)lpvStatusInformation;
		DBG_TotalBytesReceived += *pBytesReceived;
	}
	break;
	case INTERNET_STATUS_REDIRECT:
	{
#ifdef _DEBUG
		WriteLog(_T("StatusCallback Redirect: info 0x%p size: %u, context: 0x%p"),
			lpvStatusInformation, dwStatusInformationLength, dwContext);
#endif
	}
	break;
	case INTERNET_STATUS_REQUEST_COMPLETE:
	{
#ifdef _DEBUG
		WriteLog(_T("StatusCallback RequestComplete: info 0x%p size: %u, context: 0x%p"),
			lpvStatusInformation, dwStatusInformationLength, dwContext);
#endif
		LPINTERNET_ASYNC_RESULT AsyncResult = (LPINTERNET_ASYNC_RESULT)lpvStatusInformation;
		Downloader->ProcessAsyncResult(AsyncResult->dwResult, AsyncResult->dwError);
	}
	break;
	case INTERNET_STATUS_REQUEST_SENT:
	{
#ifdef _DEBUG
		WriteLog(_T("StatusCallback RequestSent: info 0x%p size: %u, context: 0x%p"),
			lpvStatusInformation, dwStatusInformationLength, dwContext);
#endif
	}
	break;
	case INTERNET_STATUS_DETECTING_PROXY:
	{
#ifdef _DEBUG
		WriteLog(_T("StatusCallback DetectingProxy: info 0x%p size: %u, context: 0x%p"),
			lpvStatusInformation, dwStatusInformationLength, dwContext);
#endif
	}
	break;
	case INTERNET_STATUS_RESOLVING_NAME:
	{
#ifdef _DEBUG
		WriteLog(_T("StatusCallback ResolvingName: info 0x%p size: %u, context: 0x%p"),
			lpvStatusInformation, dwStatusInformationLength, dwContext);
#endif
	}
	break;
	case INTERNET_STATUS_NAME_RESOLVED:
	{
#ifdef _DEBUG
		WriteLog(_T("StatusCallback NameResolved: info 0x%p size: %u, context: 0x%p"),
			lpvStatusInformation, dwStatusInformationLength, dwContext);
#endif
	}
	break;
	case INTERNET_STATUS_SENDING_REQUEST:
	{
#ifdef _DEBUG
		WriteLog(_T("StatusCallback SendingRequest: info 0x%p size: %u, context: 0x%p"),
			lpvStatusInformation, dwStatusInformationLength, dwContext);
#endif
	}
	break;
	case INTERNET_STATUS_STATE_CHANGE:
	{
#ifdef _DEBUG
		WriteLog(_T("StatusCallback StateChange: info 0x%p size: %u, context: 0x%p"),
			lpvStatusInformation, dwStatusInformationLength, dwContext);
#endif
	}
	break;
	case INTERNET_STATUS_P3P_HEADER:
	{
#ifdef _DEBUG
		WriteLog(_T("StatusCallback P3pHeader: info 0x%p size: %u, context: 0x%p"),
			lpvStatusInformation, dwStatusInformationLength, dwContext);
#endif
	}
	break;
	}
}

IDownloader* CreateDownloader()
{
	return new InternetDownloader();
}

InternetDownloader::InternetDownloader()
{}

InternetDownloader::~InternetDownloader()
{
	DeInit();
}

void InternetDownloader::DeInit()
{
	bOperationComplete = true;
	if (hConnection != NULL)
	{
		InternetCloseHandle(hConnection);
		hConnection = NULL;
	}

	if (hInternet != NULL)
	{
		InternetCloseHandle(hInternet);
		hInternet = NULL;
	}

	bOperationComplete = false;
	delete DownloadThread;
	DownloadThread = nullptr;
}

bool InternetDownloader::Init(const std::string& InHostPath)
{
	DeInit();

	bShouldDownload = TRUE;
	HostPath = InHostPath;
#if 0
	hInternet = InternetOpen(
		_T("Turtle Patcher"),
		INTERNET_OPEN_TYPE_PRECONFIG,
		NULL,
		NULL,
		INTERNET_FLAG_ASYNC);
#else
	hInternet = InternetOpen(
		_T("Turtle Patcher"),
		INTERNET_OPEN_TYPE_PRECONFIG,
		NULL,
		NULL,
		0);
#endif

	if (hInternet == NULL)
	{
		WriteLog(_T("InternetOpen failed with code: %u"), GetLastError());
		return false;
	}

	InternetSetStatusCallback(hInternet, (INTERNET_STATUS_CALLBACK)StatusCallBack);

	return true;
}

bool InternetDownloader::DownloadAsync()
{
	bool bSecured = HostPath[4] == 's';

	DWORD Flags = INTERNET_FLAG_NO_AUTH | INTERNET_FLAG_NO_UI | INTERNET_FLAG_RESYNCHRONIZE;
	if (bSecured)
	{
		Flags |= INTERNET_FLAG_SECURE;
	}

	hConnection = InternetOpenUrlA(
		hInternet, 
		HostPath.c_str(), 
		nullptr, 
		0, 
		Flags,
		(DWORD_PTR)this);

	if (hConnection == NULL)
	{
		DWORD LastErr = GetLastError();
		if (LastErr == ERROR_IO_PENDING)
		{
			// That's ok, handle will be init in INTERNET_STATUS_HANDLE_CREATED inside callback function
			return true;
		}
		WriteLog(_T("InternetOpenUrl failed with code: %u"), LastErr);
		return false;
	}
	else
	{
		ProcessAsyncResult((DWORD_PTR)hConnection, ERROR_SUCCESS);
	}

	return true;
}

void InternetDownloader::CancelDownload()
{
	InterlockedExchange(&bShouldDownload, FALSE);
	if (DownloadThread != nullptr && DownloadThread->joinable())
	{
		DownloadThread->join();
	}
}

void InternetDownloader::ProcessAsyncResult(DWORD_PTR dwResult, DWORD ErrCode)
{
	if (DownloadThread != nullptr)
	{
		return;
	}
	if (ErrCode != ERROR_SUCCESS)
	{
		if (ErrCode != ERROR_IO_PENDING)
		{
			AbortDownload();
			return;
		}
	}

	hConnection = (HINTERNET)dwResult;

	// launch download thread
	auto ThreadProcEntryPointLambda = [this]()
	{
		DownloadThreadProc();
	};
	DownloadThread = new std::thread(ThreadProcEntryPointLambda);
	DownloadThread->detach();
}

void InternetDownloader::DownloadThreadProc()
{
	char HeaderInfoBuffer[32] = {0};
	DWORD HeaderInfoSize = sizeof(HeaderInfoBuffer);
	ZeroMemory(HeaderInfoBuffer, HeaderInfoSize);

	// Status
	DWORD Index = 0;
	BOOL bQueryOk = HttpQueryInfoA(hConnection, HTTP_QUERY_STATUS_CODE, HeaderInfoBuffer, &HeaderInfoSize, &Index);
	if (!bQueryOk)
	{
		WriteLog(_T("HttpQueryInfoA failed with code: %u"), GetLastError());
		AbortDownload();
		return;
	}

	DWORD StatusCode = (DWORD)atoi(HeaderInfoBuffer);

	if (StatusCode != HTTP_STATUS_OK)
	{
		WriteLog(_T("Error: Status code: %u which is unexpected! Expected code 200!"), StatusCode);
		AbortDownload();
		return;
	}

	// Length of file
	HeaderInfoSize = sizeof(HeaderInfoBuffer);
	ZeroMemory(HeaderInfoBuffer, HeaderInfoSize);
	Index = 0;
	bQueryOk = HttpQueryInfoA(hConnection, HTTP_QUERY_CONTENT_LENGTH, HeaderInfoBuffer, &HeaderInfoSize, &Index);
	if (!bQueryOk)
	{
		WriteLog(_T("HttpQueryInfoA failed with code: %u"), GetLastError());
		AbortDownload();
		return;
	}

	uint64_t DataLength = (uint64_t)atoll(HeaderInfoBuffer);
	InterlockedExchange(&TotalBytesToDownload, DataLength);

	double fTotalDataLength = double(DataLength);

	double LastProgress = 0.0;
	// Looks like download will happen after all
	// Time to create a file where we sink our precious content
	TCHAR TempPath[MAX_PATH] = {0};
	GetTempPath(sizeof(TempPath) / sizeof(TCHAR), TempPath);
	TCHAR TempFilePath[MAX_PATH] = {0};
	GetTempFileName(TempPath, _T("tp_"), 0, TempFilePath);

	{
		FileScopedHandle hTempFile {CreateFile(TempFilePath, GENERIC_WRITE, FILE_SHARE_READ, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL)};

		uint64_t BytesDownloaded = 0;
		DWORD NumberOfBytesAvailable = 0;
		unsigned char Buffer[4 * 1024]; // usual mem page

#if 0
		BOOL bQueryResult = InternetQueryDataAvailable(hConnection, &NumberOfBytesAvailable, 0, 0);
		if (!bQueryResult)
		{
			WriteLog(_T("No data from server! Expected %llu"), DataLength);
			AbortDownload();
			return;
		}

		do 
		{
			DWORD BytesToRead = min(4 * 1024, NumberOfBytesAvailable);
			DWORD BytesReaded = 0;
			BOOL bReadResult = InternetReadFile(hConnection, Buffer, BytesToRead, &BytesReaded);
			if (!bReadResult)
			{
				WriteLog(_T("InternetReadFile failed with code: %u"), GetLastError());
				AbortDownload();
				return;
			}

			DWORD BytesWritten = 0;
			BOOL bWriteResult = WriteFile(hTempFile, Buffer, BytesReaded, &BytesWritten, NULL);
			if (!bReadResult)
			{
				WriteLog(_T("WriteFile failed with code: %u"), GetLastError());
				AbortDownload();
				return;
			}
			assert(BytesReaded == BytesWritten);
			BytesDownloaded += BytesWritten;

			// calc progress
			double fBytesDownloaded = double(BytesDownloaded);
			double CurrentProgress = fBytesDownloaded / fTotalDataLength;
			double DeltaProgress = CurrentProgress - LastProgress;
			if (DeltaProgress > 0.01f)
			{
				LastProgress = CurrentProgress;
				DownloadProgressCallback(float(CurrentProgress));
			}

			BOOL bQueryResult = InternetQueryDataAvailable(hConnection, &NumberOfBytesAvailable, 0, 0);
			if (!bQueryResult)
			{
				//NumberOfBytesAvailable = 0;
				// It's a bit stupid, but FALSE from InternetQueryDataAvailable doesn't actually means that we downloaded file, or encounter error
				// It can means that we don't have more bytes right now, and we should wait
				DWORD QueryDataLastErr = GetLastError();
				if (QueryDataLastErr == ERROR_IO_PENDING)
				{
					Sleep(1);
					continue;
				}

				break;
			}
		} 
		while (BytesDownloaded < DataLength && bShouldDownload);
#else
		do 
		{
			//#TEMP:
			if (this == nullptr)
			{
				WriteLog(_T("Bug in download - this is nullptr"));
			}

			DWORD BytesReaded = 0;
			BOOL bReadResult = InternetReadFile(hConnection, Buffer, 4 * 1024, &BytesReaded);
			if (!bReadResult)
			{
				DWORD LastErr = GetLastError();
				if (LastErr != ERROR_IO_PENDING)
				{
					WriteLog(_T("InternetReadFile failed with code: %u"), LastErr);
					AbortDownload();
					return;
				}
			}

			DWORD BytesWritten = 0;
			BOOL bWriteResult = WriteFile(hTempFile, Buffer, BytesReaded, &BytesWritten, NULL);
			if (!bWriteResult)
			{
				WriteLog(_T("WriteFile failed with code: %u"), GetLastError());
				AbortDownload();
				return;
			}
			assert(BytesReaded == BytesWritten);
			BytesDownloaded += BytesWritten;

			// calc progress
			double fBytesDownloaded = double(BytesDownloaded);
			double CurrentProgress = fBytesDownloaded / fTotalDataLength;
			double DeltaProgress = CurrentProgress - LastProgress;
			if (DeltaProgress > 0.01f)
			{
				LastProgress = CurrentProgress;
				DownloadProgressCallback(float(CurrentProgress));
			}
		} while (BytesDownloaded < DataLength && bShouldDownload);
#endif

		if (!bShouldDownload)
		{
			WriteLog(_T("Download has been aborted"));
			return;
		}

		if (BytesDownloaded < DataLength)
		{
			WriteLog(_T("File is incomplete! Downloaded %llu, but needed %llu"), BytesDownloaded, DataLength);
			AbortDownload();
			return;
		}
	}

	WriteLog(_T("File downloaded. Temp file: %s. Attempting to move..."), TempFilePath);
	// Move temp file

	TCHAR CurrentDir[MAX_PATH];
	GetCurrentDirectory(sizeof(CurrentDir) / sizeof(CurrentDir[0]), CurrentDir);

	TCHAR PatchDir[MAX_PATH];
	wsprintf(PatchDir, _T("%s\\wow-patch.mpq"), CurrentDir);

	BOOL bMoved = MoveFile(TempFilePath, PatchDir);
	if (bMoved)
	{
		WriteLog(_T("Move ok. Temp file: %s -> %s"), TempFilePath, PatchDir);
	}
	else
	{
		WriteLog(_T("Failed to move. Temp file: %s -> %s"), TempFilePath, PatchDir);
		AbortDownload();
		return;
	}

	DownloadComplete();
}

void InternetDownloader::AbortDownload()
{
	if (bOperationComplete)
	{
		return;
	}
	OnAbortDownload();
}

void InternetDownloader::DownloadComplete()
{
	bOperationComplete = true;
	OnDownloadComplete();
}

IDownloader::~IDownloader()
{}
