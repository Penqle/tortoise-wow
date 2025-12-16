#ifndef _MANGOS_COMMAND_STREAM
#define _MANGOS_COMMAND_STREAM

#include <sstream>
#include <type_traits>

class CommandStream
{
public:
    CommandStream(std::string commandArgs) : _inputStream(std::move(commandArgs)) {}

    template <typename T>
    CommandStream& ExtractString(T&& t)
    {
        auto chr = _inputStream.peek();

        while (_inputStream)
        {
            if (chr != ' ')
                break;

            chr = _inputStream.get();
        }

        if (chr == '\"')
        {
            _inputStream.get(); // remove "
            std::getline(_inputStream, t, '\"');
        }
        else
            std::getline(_inputStream, t, ' ');
        return *this;
    }


    template <typename T>
    CommandStream& operator>>(T&& t)
    {
        if constexpr (std::is_same<T, std::string>::value)
        {
            return ExtractString(std::forward<T>(t));
        }
        else
        {
            _inputStream >> t;
            return *this;
        }
    }

    operator bool() const 
    {
        return static_cast<bool>(_inputStream);
    }

    bool operator!() const
    {
        return !static_cast<bool>(*this);
    }
private:
    std::istringstream _inputStream;
};

#endif
