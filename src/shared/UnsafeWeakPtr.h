#pragma once

#include "Common.h"

#include <memory>
#include <cassert>

struct no_empty_ptr_tag {};

namespace Utilities
{
	/*Allows deref.
	Only use when certain that pointed-to object will still be valid.
	*/
	template <typename T>
	class UnsafeWeakPtr : public std::weak_ptr<T>
	{
	public:

		using std::weak_ptr<T>::expired;
		using std::weak_ptr<T>::get;

		UnsafeWeakPtr(std::shared_ptr<T>& ptr) : std::weak_ptr<T>(ptr), m_rawPtr(ptr.get()) {}

		UnsafeWeakPtr(std::shared_ptr<T>& ptr, no_empty_ptr_tag) : UnsafeWeakPtr(ptr)
		{
			assert(!expired());
		}

		T* get()
		{
			return m_rawPtr;
		}

		const T* get() const
		{
			return m_rawPtr;
		}

		T* safe_get()
		{
			if (expired())
				return nullptr;
			return get();
		}

		T* safe_get() const
		{
			if (expired())
				return nullptr;
			return get();
		}

		T* operator->()
		{
			return get();
		}

		T& operator*()
		{
			return *get();
		}

		UnsafeWeakPtr(const UnsafeWeakPtr&) = default;
		UnsafeWeakPtr(UnsafeWeakPtr&&) = default;
		~UnsafeWeakPtr() = default;
		UnsafeWeakPtr& operator=(const UnsafeWeakPtr&) = default;
		UnsafeWeakPtr& operator=(UnsafeWeakPtr&&) = default;
	private:
		T* m_rawPtr;
	};

	template <typename T>
	using u_weak_ptr = UnsafeWeakPtr<T>;
}

