#pragma once


enum EPatcherStage
{
	STAGE_INIT,
	STAGE_BINARY_PATCH,
	STAGE_DOWNLOADING,
	STAGE_CLEAR_CACHE,
	STAGE_UNPACK_FILES,
	STAGE_DONE
};

extern unsigned long long TotalBytesToDownload;