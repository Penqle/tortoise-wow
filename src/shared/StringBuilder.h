#pragma once
#include <vector>
#include <type_traits>
#include <iostream>
#include <streambuf>
#include <iomanip>
#include <ctime>

#include "Common.h"

namespace Utilities
{
	namespace detail
	{
		template <typename T>
		class has_tostring
		{
		private:
			using Yes = char;
			typedef Yes No[2];

			template<typename C> static auto Test(void*)
				-> decltype(std::string{ std::declval<C>().ToString() }, Yes{});

			template<typename> static No& Test(...);

		public:
			static constexpr bool  value = sizeof(Test<T>(0)) == sizeof(Yes);
		};

		template<class T>
		struct is_c_str
			: std::integral_constant<
			bool,
			std::is_same<char const*, typename std::decay<T>::type>::value ||
			std::is_same<char*, typename std::decay<T>::type>::value
			> {};
	}

	enum TimeValOption : uint32
	{
		Date = 1,
		Time = 2,
		Both = Date | Time,

		FileFormat = 4
	};

	template
		<typename char_t = char>
		class StringBuilder_Impl : public std::ostream, std::streambuf
	{
	public:
		using string_t = std::basic_string<char_t>;


		int overflow(int c)
		{
			Append(static_cast<char>(c));
			return 0;
		}

		StringBuilder_Impl() : std::ostream(this), m_totalStringSize(0) {}

		StringBuilder_Impl(string_t startString) : std::ostream(this), m_totalStringSize(0)
		{
			m_data.reserve(startString.size());
			m_data.emplace_back(std::move(startString));
		}

		template <typename T>
		StringBuilder_Impl& AppendLine(T data)
		{
			Append(std::move(data));
			Append(lineFeed);
			return *this;
		}

		template <typename T, typename std::enable_if_t<detail::has_tostring<T>::value && !detail::is_c_str<T>::value, int> = 0>
		StringBuilder_Impl& Append(T data)
		{
			_Append(data.ToString());
			return *this;
		}

		template <typename T, typename std::enable_if_t<!detail::has_tostring<T>::value && (!detail::is_c_str<T>::value && !std::is_same<T, char>::value), int> = 0>
		StringBuilder_Impl& Append(T data)
		{
			_Append(std::to_string(data));
			return *this;
		}

		template <typename T, typename std::enable_if_t<detail::is_c_str<T>::value || std::is_same<T, char>::value, int> = 0>
		StringBuilder_Impl& Append(T data)
		{
			_Append(string_t{ data });
			return *this;
		}

		StringBuilder_Impl& Append(string_t data)
		{
			_Append(std::move(data));
			return *this;
		}

		StringBuilder_Impl& Append(char_t data)
		{
			_Append(std::move(string_t{ data }));
			return *this;
		}

		string_t ToString()
		{
			string_t str;
			str.reserve(m_totalStringSize);

			for (const auto& elem : m_data)
			{
				str.append(elem);
			}
			return str;
		}

		string_t str()
		{
			return ToString();
		}

		template <typename T>
		StringBuilder_Impl& operator<< (T val)
		{
			return Append(std::move(val));
		}


		StringBuilder_Impl& TimeVal(uint32 option)
		{
			auto t = std::time(nullptr);
			auto tm = *std::localtime(&t);

			std::string format;
			uint32 mask = option;
			bool fileFormat = (mask & TimeValOption::FileFormat) == TimeValOption::FileFormat;

			if ((mask & TimeValOption::Date) == TimeValOption::Date)
				format = "%d-%m-%Y";

			if (!fileFormat)
				format += " ";
			else
				format += "_";

			if ((mask & TimeValOption::Time) == TimeValOption::Time)
			{
				if (!fileFormat)
					format += "%H:%M:%S";
				else
					format += "%H-%M-%S";
			}

			static_cast<std::ostream&>(*this) << std::put_time(&tm, format.c_str()); // cast instead of base:: for ADL
			return *this;
		}
	private:
		template <typename T>
		StringBuilder_Impl& _Append(T data)
		{
			m_totalStringSize += data.size();
			m_data.emplace_back(std::move(data));
			return *this;
		}

		std::vector<string_t> m_data;
		size_t m_totalStringSize;
#ifdef _WIN32
		const char* lineFeed = "\r\n";
#else
		const char* lineFeed = "\n";
#endif
	};
}

using StringBuilder = Utilities::StringBuilder_Impl<>;