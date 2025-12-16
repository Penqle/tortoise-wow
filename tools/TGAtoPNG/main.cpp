#define _CRT_SECURE_NO_DEPRECATE

#include <filesystem>
#include <iostream>
#include <vector>
#include <fstream>
// #include <cstdio>
#include <sstream>
#include "lodepng.h"
#include "tga.h"
#include "Windows.h"
#include <queue>
#include <thread>
#include <mutex>

using namespace std;
#define fs std::filesystem

std::queue<std::string> tga_files;
std::mutex tga_files_guard;

void Convert()
{
    while (true)
    {
        tga_files_guard.lock();

        if (tga_files.size() == 0)
        {
            tga_files_guard.unlock();
            return;
        }

        std::string s = tga_files.front();
        tga_files.pop();

        tga_files_guard.unlock();

        FILE* f = std::fopen(s.c_str(), "rb");
        tga::StdioFileInterface file(f);
        tga::Decoder decoder(&file);
        tga::Header header;
        if (!decoder.readHeader(header))
            return;

        tga::Image image;
        image.bytesPerPixel = header.bytesPerPixel();
        image.rowstride = header.width * header.bytesPerPixel();

        std::vector<uint8_t> buffer(image.rowstride * header.height);
        image.pixels = &buffer[0];

        if (!decoder.readImage(header, image, nullptr))
            return;

        decoder.postProcessImage(header, image);

        size_t srt_pos = s.find_last_of("/\\");
        std::string s_filename = s.substr(srt_pos + 1);
        s_filename.erase(s_filename.size() - 4);
        s_filename.append(".png");

        unsigned saveError = lodepng::encode(s_filename.c_str(), image.pixels, header.width, header.height, LodePNGColorType::LCT_RGBA);
    }
}

int main() 
{
    fs::path _path = fs::current_path() / "Screenshots";

    for (const fs::directory_entry& dir_entry : fs::recursive_directory_iterator(_path))
    {
        if (dir_entry.is_directory())
            continue;

        if (dir_entry.path().extension() == ".tga")
        {
            std::stringstream ss;
            ss << "Screenshots/" << dir_entry.path().filename().string();
            std::string s = ss.str();

            tga_files.push(s);
        }
    }

    uint32_t thread_count = std::thread::hardware_concurrency();

    for (uint32_t i = 0; i < thread_count; i++)
    {
        std::thread work(Convert);
        work.detach();
    }

    while (true)
    {
        tga_files_guard.lock();
        size_t size = tga_files.size();
        tga_files_guard.unlock();

        if (size == 0)
            break;
        else
            Sleep(1);
    }
	return 0;
}