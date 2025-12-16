#pragma once
#include <type_traits>
#include <memory>

#include <vector>
#include <list>
#include <map>
#include <unordered_map>
#include <unordered_set>
#include <set>
#include <string.h>

// following code was copy-pasted from C++ library
// It's very difficult to read, and I'm not sure about cross-compiler support

class IPerfMonitor
{
public:
	
	virtual void ReportAlloc(const char* Category, size_t Bytes) = 0;
	virtual void ReportDealloc(const char* Category, size_t Bytes) = 0;
};

extern IPerfMonitor* gPerfMonitorInterface;

template<typename TargetType>
class SizeGuide_Direct
{
public:
	using TypeToSize = TargetType;
};

template<typename TargetType>
class SizeGuide_UniquePtr
{
public:
	using TypeToSize = typename TargetType::element_type;
};

inline const char DefaultCategory[] = "Uncategorized";

//#TODO: Check Torvalds platform

#ifndef _CONSTEXPR20
#define _CONSTEXPR20 inline
#endif

#ifndef _NODISCARD_RAW_PTR_ALLOC
#define _NODISCARD_RAW_PTR_ALLOC
#endif

#ifndef _CXX20_DEPRECATE_IS_ALWAYS_EQUAL
#define _CXX20_DEPRECATE_IS_ALWAYS_EQUAL
#endif

#ifndef _CXX17_DEPRECATE_OLD_ALLOCATOR_MEMBERS
#define _CXX17_DEPRECATE_OLD_ALLOCATOR_MEMBERS
#endif

#ifndef _CRT_GUARDOVERFLOW
#define _CRT_GUARDOVERFLOW
#endif

template<size_t alignment, std::enable_if_t<(alignment > __STDCPP_DEFAULT_NEW_ALIGNMENT__), int> = 0>
void* InternalAllocateMemory(size_t Count)
{
	return ::operator new (Count, std::align_val_t{alignment});
}

template<size_t alignment, std::enable_if_t<(alignment <= __STDCPP_DEFAULT_NEW_ALIGNMENT__), int> = 0>
void* InternalAllocateMemory(size_t Count)
{
	return ::operator new (Count);
}

template<size_t alignment, std::enable_if_t<(alignment > __STDCPP_DEFAULT_NEW_ALIGNMENT__), int> = 0>
void InternalDeallocateMemory(void* Ptr, size_t Bytes)
{
	::operator delete(Ptr, Bytes, std::align_val_t{ alignment });
}

template<size_t alignment, std::enable_if_t<(alignment <= __STDCPP_DEFAULT_NEW_ALIGNMENT__), int> = 0>
void InternalDeallocateMemory(void* Ptr, size_t Bytes)
{
	::operator delete(Ptr, Bytes);
}

template <class TargetType, const char* CategoryName>
class AllocatorWithCategory 
{

public:
	static_assert(!std::is_const_v<TargetType>, "The C++ Standard forbids containers of const elements "
		"because allocator<const T> is ill-formed.");
	static_assert(!std::is_function_v<TargetType>, "The C++ Standard forbids allocators for function elements "
		"because of [allocator.requirements].");
	static_assert(!std::is_reference_v<TargetType>, "The C++ Standard forbids allocators for reference elements "
		"because of [allocator.requirements].");

	using _From_primary = AllocatorWithCategory;

	using value_type = TargetType;

#if _HAS_DEPRECATED_ALLOCATOR_MEMBERS
	using pointer _CXX17_DEPRECATE_OLD_ALLOCATOR_MEMBERS = TargetType*;
	using const_pointer _CXX17_DEPRECATE_OLD_ALLOCATOR_MEMBERS = const TargetType*;

	using reference _CXX17_DEPRECATE_OLD_ALLOCATOR_MEMBERS = TargetType&;
	using const_reference _CXX17_DEPRECATE_OLD_ALLOCATOR_MEMBERS = const TargetType&;
#endif // _HAS_DEPRECATED_ALLOCATOR_MEMBERS

	using size_type = size_t;
	using difference_type = ptrdiff_t;

	using propagate_on_container_move_assignment = std::true_type;
	using is_always_equal _CXX20_DEPRECATE_IS_ALWAYS_EQUAL = std::true_type;

#if _HAS_DEPRECATED_ALLOCATOR_MEMBERS
	template <class _Other>
	struct _CXX17_DEPRECATE_OLD_ALLOCATOR_MEMBERS rebind
	{
		using other = AllocatorWithCategory<_Other, CategoryName>;
	};

	_CXX17_DEPRECATE_OLD_ALLOCATOR_MEMBERS [[nodiscard]] TargetType* address(TargetType& _Val) const noexcept
	{
		return std::addressof(_Val);
	}

	_CXX17_DEPRECATE_OLD_ALLOCATOR_MEMBERS [[nodiscard]] const TargetType* address(const TargetType& _Val) const noexcept
	{
		return std::addressof(_Val);
	}
#else
	template <class _Other>
	struct _CXX17_DEPRECATE_OLD_ALLOCATOR_MEMBERS rebind
	{
		using other = AllocatorWithCategory<_Other, CategoryName>;
	};
#endif // _HAS_DEPRECATED_ALLOCATOR_MEMBERS

	constexpr AllocatorWithCategory() noexcept {}

	constexpr AllocatorWithCategory(const AllocatorWithCategory&) noexcept = default;

	template <class _Other>
	constexpr AllocatorWithCategory(const AllocatorWithCategory<_Other, CategoryName>&) noexcept {}

	template <class _Other, const char* OtherName>
	constexpr AllocatorWithCategory(const AllocatorWithCategory<_Other, OtherName>&) noexcept {}

	_CONSTEXPR20 ~AllocatorWithCategory() = default;

	_CONSTEXPR20 AllocatorWithCategory<TargetType, CategoryName>& operator=(const AllocatorWithCategory&) = default;

	_CONSTEXPR20 void deallocate(TargetType* const _Ptr, const size_t _Count)
	{
		size_t BytesNeededToDeallocate = sizeof(TargetType) * _Count;
		if (gPerfMonitorInterface != nullptr)
		{
			gPerfMonitorInterface->ReportDealloc(CategoryName, BytesNeededToDeallocate);
		}
		//std::_Deallocate<std::_New_alignof<TargetType>>(_Ptr, BytesNeededToDeallocate);
		//operator delete(_Ptr, BytesNeededToDeallocate, std::align_val_t(std::alignment_of< TargetType >::value));
		InternalDeallocateMemory<std::alignment_of< TargetType >::value>(_Ptr, BytesNeededToDeallocate);
	}

	_NODISCARD_RAW_PTR_ALLOC _CONSTEXPR20 TargetType* allocate(const size_t _Count)
	{
		static_assert(sizeof(value_type) > 0, "value_type must be complete before calling allocate.");
		size_t BytesNeededToAllocate = sizeof(TargetType) * _Count;
		if (gPerfMonitorInterface != nullptr)
		{
			gPerfMonitorInterface->ReportAlloc(CategoryName, BytesNeededToAllocate);
		}
		//return static_cast<TargetType*>(std::_Allocate<std::_New_alignof<TargetType>>(BytesNeededToAllocate));
		return (TargetType*) InternalAllocateMemory<std::alignment_of< TargetType >::value>(BytesNeededToAllocate);
	}

#if _HAS_CXX23
	_NODISCARD_RAW_PTR_ALLOC constexpr std::allocation_result<TargetType*> allocate_at_least(
		_CRT_GUARDOVERFLOW const size_t _Count)
	{
		return { allocate(_Count), _Count };
	}
#endif // _HAS_CXX23

#if _HAS_DEPRECATED_ALLOCATOR_MEMBERS
	_CXX17_DEPRECATE_OLD_ALLOCATOR_MEMBERS _NODISCARD_RAW_PTR_ALLOC TargetType* allocate(
		_CRT_GUARDOVERFLOW const size_t _Count, const void*)
	{
		return allocate(_Count);
	}

	template <class _Objty, class... _Types>
	_CXX17_DEPRECATE_OLD_ALLOCATOR_MEMBERS void construct(_Objty* const _Ptr, _Types&&... _Args)
	{
		::new (const_cast<void*>(static_cast<const volatile void*>(_Ptr))) _Objty(std::forward<_Types>(_Args)...);
	}

	template <class _Uty>
	_CXX17_DEPRECATE_OLD_ALLOCATOR_MEMBERS void destroy(_Uty* const _Ptr)
	{
		_Ptr->~_Uty();
	}

	_CXX17_DEPRECATE_OLD_ALLOCATOR_MEMBERS [[nodiscard]] size_t max_size() const noexcept
	{
		return static_cast<size_t>(-1) / sizeof(TargetType);
	}
#endif // _HAS_DEPRECATED_ALLOCATOR_MEMBERS

#if _HAS_CXX20
	static constexpr size_t _Minimum_asan_allocation_alignment = std::_Asan_granularity;
#endif
};

template <class _Ty, class _Other, const char* Category1, const char* Category2>
[[nodiscard]] _CONSTEXPR20 bool operator==(const AllocatorWithCategory<_Ty, Category1>&, const AllocatorWithCategory<_Other, Category2>&) noexcept
{
	return true;
}

template<typename Type, const char* CategoryName>
using turtle_vector = std::vector<Type, AllocatorWithCategory<Type, CategoryName>>;

template<typename Type, const char* CategoryName>
using turtle_list = std::list<Type, AllocatorWithCategory<Type, CategoryName>>;

template<typename KeyType, typename ValueType, const char* CategoryName, class ComparePredicate = std::less<KeyType>>
using turtle_map = std::map<KeyType, ValueType, ComparePredicate, AllocatorWithCategory<std::pair<const KeyType, ValueType>, CategoryName>>;

template<typename KeyType, typename ValueType, const char* CategoryName, class Hasher = std::hash<KeyType>, class KeyEqual = std::equal_to<KeyType>>
using turtle_unordered_map = std::unordered_map<KeyType, ValueType, Hasher, KeyEqual, AllocatorWithCategory<std::pair<const KeyType, ValueType>, CategoryName>>;

template<class KeyType, const char* CategoryName, class Predicate = std::less<KeyType>>
using turtle_set = std::set<KeyType, Predicate, AllocatorWithCategory<KeyType, CategoryName>>;

template<class KeyType, const char* CategoryName, class Hasher = std::hash<KeyType>, class KeyEqual = std::equal_to<KeyType>>
using turtle_unordered_set = std::unordered_set<KeyType, Hasher, KeyEqual, AllocatorWithCategory<KeyType, CategoryName>>;

#if 0
constexpr char Category_String[] = "String";
using turtle_string = std::basic_string<char, std::char_traits<char>, AllocatorWithCategory<char, Category_String>>;

using turtle_istringstream = std::basic_istringstream<char, std::char_traits<char>, AllocatorWithCategory<char, Category_String>>;

using turtle_ostringstream = std::basic_ostringstream<char, std::char_traits<char>, AllocatorWithCategory<char, Category_String>>;

using turtle_stringstream = std::basic_stringstream<char, std::char_traits<char>, AllocatorWithCategory<char, Category_String>>;

_NODISCARD inline unsigned long stoul(const std::string& _Str, size_t* _Idx = nullptr, int _Base = 10) {
	int& _Errno_ref = errno; // Nonzero cost, pay it once
	const char* _Ptr = _Str.c_str();
	char* _Eptr;
	_Errno_ref = 0;
	const unsigned long _Ans = _CSTD strtoul(_Ptr, &_Eptr, _Base);

	if (_Ptr == _Eptr) {
		std::_Xinvalid_argument("invalid stoul argument");
	}

	if (_Errno_ref == ERANGE) {
		std::_Xout_of_range("stoul argument out of range");
	}

	if (_Idx) {
		*_Idx = static_cast<size_t>(_Eptr - _Ptr);
	}

	return _Ans;
}

_NODISCARD inline int stoi(const std::string& _Str, size_t* _Idx = nullptr, int _Base = 10) 
{
	int& _Errno_ref = errno; // Nonzero cost, pay it once
	const char* _Ptr = _Str.c_str();
	char* _Eptr;
	_Errno_ref = 0;
	const long _Ans = _CSTD strtol(_Ptr, &_Eptr, _Base);

	if (_Ptr == _Eptr) {
		std::_Xinvalid_argument("invalid stoi argument");
	}

	if (_Errno_ref == ERANGE) {
		std::_Xout_of_range("stoi argument out of range");
	}

	if (_Idx) {
		*_Idx = static_cast<size_t>(_Eptr - _Ptr);
	}

	return static_cast<int>(_Ans);
}

// TRANSITION, CUDA - warning: pointless comparison of unsigned integer with zero
template <class _Elem, class StrTraits, class StrAlloc, class _Ty>
_NODISCARD std::basic_string<_Elem, StrTraits, StrAlloc> UIntegral_to_string(const _Ty _Val) 
{
	// convert _Val to string
	static_assert(std::is_integral_v<_Ty>, "_Ty must be integral");
	static_assert(std::is_unsigned_v<_Ty>, "_Ty must be unsigned");
	_Elem _Buff[21]; // can hold 2^64 - 1, plus NUL
	_Elem* const _Buff_end = std::end(_Buff);
	_Elem* const _RNext = std::_UIntegral_to_buff(_Buff_end, _Val);
	return std::basic_string<_Elem, StrTraits, StrAlloc>(_RNext, _Buff_end);
}

template <class _Elem, class StrTraits, class StrAlloc, class _Ty>
_NODISCARD std::basic_string<_Elem, StrTraits, StrAlloc> Integral_to_string(const _Ty _Val) 
{
	// convert _Val to string
	static_assert(std::is_integral_v<_Ty>, "_Ty must be integral");
	using _UTy = std::make_unsigned_t<_Ty>;
	_Elem _Buff[21]; // can hold -2^63 and 2^64 - 1, plus NUL
	_Elem* const _Buff_end = std::end(_Buff);
	_Elem* _RNext = _Buff_end;
	const auto _UVal = static_cast<_UTy>(_Val);
	if (_Val < 0) {
		_RNext = std::_UIntegral_to_buff(_RNext, 0 - _UVal);
		*--_RNext = '-';
	}
	else {
		_RNext = std::_UIntegral_to_buff(_RNext, _UVal);
	}

	return std::basic_string<_Elem, StrTraits, StrAlloc>(_RNext, _Buff_end);
}

inline turtle_string tostr(const std::string& str)
{
	return turtle_string(str.c_str(), str.size());
}

namespace turtle
{
	_NODISCARD inline turtle_string to_string(int _Val)
	{
		return Integral_to_string<char, std::char_traits<char>, AllocatorWithCategory<char, Category_String>>(_Val);
	}

	_NODISCARD inline turtle_string to_string(unsigned int _Val)
	{
		return UIntegral_to_string<char, std::char_traits<char>, AllocatorWithCategory<char, Category_String>>(_Val);
	}

	_NODISCARD inline turtle_string to_string(long _Val)
	{
		return Integral_to_string<char, std::char_traits<char>, AllocatorWithCategory<char, Category_String>>(_Val);
	}

	_NODISCARD inline turtle_string to_string(unsigned long _Val)
	{
		return UIntegral_to_string<char, std::char_traits<char>, AllocatorWithCategory<char, Category_String>>(_Val);
	}

	_NODISCARD inline turtle_string to_string(long long _Val)
	{
		return Integral_to_string<char, std::char_traits<char>, AllocatorWithCategory<char, Category_String>>(_Val);
	}

	_NODISCARD inline turtle_string to_string(unsigned long long _Val)
	{
		return UIntegral_to_string<char, std::char_traits<char>, AllocatorWithCategory<char, Category_String>>(_Val);
	}

	_NODISCARD inline std::string to_string(double _Val) 
	{
		const auto _Len = static_cast<size_t>(_CSTD _scprintf("%f", _Val));
		std::string _Str(_Len, '\0');
		_CSTD sprintf_s(&_Str[0], _Len + 1, "%f", _Val);
		return _Str;
	}

	_NODISCARD inline std::string to_string(float _Val) 
	{
		return to_string(static_cast<double>(_Val));
	}

	_NODISCARD inline std::string to_string(long double _Val) 
	{
		return to_string(static_cast<double>(_Val));
	}
}

#endif

constexpr char Category_SuspiciousStat[] = "SuspiciousStat";
constexpr char Category_Loot[] = "Loot";
constexpr char Category_ItemLocale[] = "ItemLocale";
constexpr char Category_AI[] = "AI";
constexpr char Category_EventAI[] = "EventAI";
constexpr char Category_Anticheat[] = "Anticheat";
constexpr char Category_Auction[] = "Auction";
constexpr char Category_AuraRemoval[] = "Auction";
constexpr char Category_Battleground[] = "Auction";
constexpr char Category_DailyQuest[] = "DailyQuest";
constexpr char Category_Pet[] = "Pet";
constexpr char Category_VMap[] = "VMAP";
constexpr char Category_AccountStorage[] = "AccountStorage";