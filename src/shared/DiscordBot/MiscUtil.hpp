#pragma once

#include <vector>
#include <stdint.h>

namespace DiscordBot
{
    class ImageUtil
    {
    public:
        static void Resize(std::vector<uint8_t>& data, int width, int height, int scale)
        {
            int newWidth = width * scale;
            int newHeight = height * scale;

            std::vector<std::uint8_t> newData;
            newData.resize(newHeight * newWidth);

            for (int i = 0; i < newHeight; ++i)
            {
                for (int j = 0; j < newWidth; ++j)
                {
                    int x = i * width / newWidth;
                    int y = j * height / newHeight;

                    newData[i * newWidth + j] = data[x * width + y];
                }
            }
            data = std::move(newData);
        }
    };
}