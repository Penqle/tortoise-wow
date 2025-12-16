// Giperion for Turtle WoW
#pragma once
#include <functional>

class IDownloader
{
public:
	virtual bool Init(const std::string& InHostPath) = 0;
	virtual bool DownloadAsync() = 0;
	virtual void CancelDownload() = 0;
	virtual ~IDownloader();

	// All callbacks may be invoked from different threads!

	std::function<void()> OnAbortDownload;
	std::function<void()> OnDownloadComplete;

	std::function<void(float)> DownloadProgressCallback;
};

IDownloader* CreateDownloader();