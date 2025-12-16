#pragma once
#include <math.h>
#include <limits>

// Inline call
#ifndef IC
#define IC inline
#define ICF __forceinline
#endif

constexpr float		EPS_S = 0.0000001f;			// одна дес€ти миллионна€ 
constexpr float		EPS = 0.0000100f;			// одна дес€ти тыс€чна€
constexpr float		EPS_L = 0.0010000f;			// одна тыс€чна€
//////////////////////////////////////////////
constexpr float		M_SQRT1_2 = 0.7071067811865475244008443621048f;	// ќдна втора€ корн€ из двух
//////////////////////////////////////////////
constexpr float		M_PI = 3.1415926535897932384626433832795f;
constexpr float		PI = 3.1415926535897932384626433832795f;
constexpr float		PI_MUL_2 = 6.2831853071795864769252867665590f;
constexpr float		PI_MUL_3 = 9.4247779607693797153879301498385f;
constexpr float		PI_MUL_4 = 12.566370614359172953850573533118f;
constexpr float		PI_MUL_6 = 18.849555921538759430775860299677f;
constexpr float		PI_MUL_8 = 25.132741228718345907701147066236f;
constexpr float		PI_DIV_2 = 1.5707963267948966192313216916398f;
constexpr float		PI_DIV_3 = 1.0471975511965977461542144610932f;
constexpr float		PI_DIV_4 = 0.7853981633974483096156608458199f;
constexpr float		PI_DIV_6 = 0.5235987755982988730771072305466f;
constexpr float		PI_DIV_8 = 0.3926990816987241548078304229099f;
//////////////////////////////////////////////

IC float	_abs(float x) noexcept { return fabsf(x); }
IC float	_sqrt(float x) noexcept { return sqrtf(x); }
IC float	_sin(float x) noexcept { return sinf(x); }
IC float	_cos(float x) noexcept { return cosf(x); }
IC float    _log(float x) noexcept { return logf(x); }

IC BOOL  fsimilar(float		a, float	b, float	cmp = EPS) { return _abs(a - b) < cmp; }
IC BOOL  dsimilar(double	a, double	b, double	cmp = EPS) { return _abs(a - b) < cmp; }

IC BOOL  fis_zero(float		val, float	cmp = EPS_S) { return _abs(val) < cmp; }
IC BOOL  dis_zero(double	val, double	cmp = EPS_S) { return _abs(val) < cmp; }

template <typename T>
constexpr auto type_zero = std::numeric_limits<T>::min();
constexpr float flt_zero = type_zero<float>;

template <class T>
struct _vector3
{
public:
	typedef T			TYPE;
	typedef _vector3<T>	Self;
	typedef Self&		SelfRef;
	typedef const Self&	SelfCRef;
public:
	T	x, y, z;

	// access operators
	ICF	T&		operator[]	(int i) { return *((T*)this + i); }
	ICF	T&		operator[]	(int i)	const { return *((T*)this + i); }

	IC SelfRef	operator += (SelfCRef v) { return add(v); }
	IC SelfRef	operator += (const T p) { return add(p); }
	IC SelfRef	operator -= (SelfCRef v) { return sub(v); }
	IC SelfRef	operator -= (const T p) { return sub(p); }
	IC SelfRef	operator *= (SelfCRef v) { return mul(v); }
	IC SelfRef	operator *= (const T p) { return mul(p); }
	IC SelfRef	operator /= (SelfCRef v) { return div(v); }
	IC SelfRef	operator /= (const T p) { return div(p); }
	IC bool		operator == (SelfCRef Vec) { return Vec.x == x && Vec.y == y && Vec.z == z; }

	ICF	SelfRef	set(const T _x, const T _y, const T _z) noexcept { x = _x;		y = _y;			z = _z;				return *this; }
	ICF SelfRef	set(SelfCRef v)						 noexcept { x = T(v.x);	y = T(v.y);		z = T(v.z);			return *this; }
	ICF	SelfRef	set(const T* p)						 noexcept { x = p[0];	y = p[1];		z = p[2];			return *this; }

	ICF	SelfRef	add(SelfCRef v)							 noexcept { x += v.x;		y += v.y;		z += v.z;			return *this; }
	ICF SelfRef	add(const T s)							 noexcept { x += s;			y += s;			z += s;				return *this; }
	ICF SelfRef	add(SelfCRef a, SelfCRef v)				 noexcept { x = a.x + v.x;	y = a.y + v.y;	z = a.z + v.z;		return *this; }
	ICF SelfRef	add(SelfCRef a, const T s)				 noexcept { x = a.x + s;	y = a.y + s;	z = a.z + s;		return *this; }

	ICF	SelfRef	sub(SelfCRef v)					noexcept { x -= v.x;		y -= v.y;		z -= v.z;			return *this; }
	ICF SelfRef	sub(const T s)						noexcept { x -= s;			y -= s;			z -= s;				return *this; }
	ICF	SelfRef	sub(SelfCRef a, SelfCRef v)		noexcept { x = a.x - v.x;	y = a.y - v.y;	z = a.z - v.z;		return *this; }
	ICF SelfRef	sub(SelfCRef a, const T s)			noexcept { x = a.x - s;	y = a.y - s;	z = a.z - s;		return *this; }

	ICF	SelfRef	mul(SelfCRef v)					noexcept { x *= v.x;		y *= v.y;		z *= v.z;			return *this; }
	ICF SelfRef	mul(const T s)						noexcept { x *= s;			y *= s;			z *= s;				return *this; }
	ICF	SelfRef	mul(SelfCRef a, SelfCRef v)		noexcept { x = a.x*v.x;	y = a.y*v.y;	z = a.z*v.z;		return *this; }
	ICF SelfRef	mul(SelfCRef a, const T s)			noexcept { x = a.x*s;		y = a.y*s;		z = a.z*s;			return *this; }

	ICF	SelfRef	div(SelfCRef v)							noexcept { x /= v.x;		y /= v.y;		z /= v.z;			return *this; }
	ICF SelfRef	div(const T s)							noexcept { x /= s;			y /= s;			z /= s;				return *this; }
	ICF	SelfRef	div(SelfCRef a, SelfCRef v)				noexcept { x = a.x / v.x;	y = a.y / v.y;	z = a.z / v.z;		return *this; }
	ICF SelfRef	div(SelfCRef a, const T s)				noexcept { x = a.x / s;		y = a.y / s;	z = a.z / s;		return *this; }

	IC	SelfRef	invert() { x = -x;			y = -y;			z = -z;				return *this; }
	IC	SelfRef	invert(SelfCRef a) { x = -a.x;			y = -a.y;		z = -a.z;			return *this; }

	IC	SelfRef	min(SelfCRef v) { x = std::min(x, v.x);		y = std::min(y, v.y);		z = std::min(z, v.z);		return *this; }
	IC	SelfRef	min(SelfCRef v1, SelfCRef v2) { x = std::min(v1.x, v2.x);	y = std::min(v1.y, v2.y);	z = std::min(v1.z, v2.z);	return *this; }

	IC	SelfRef	max(SelfCRef v) { x = std::max(x, v.x);		y = std::max(y, v.y);		z = std::max(z, v.z);		return *this; }
	IC	SelfRef	max(SelfCRef v1, SelfCRef v2) { x = std::max(v1.x, v2.x);	y = std::max(v1.y, v2.y);	z = std::max(v1.z, v2.z);	return *this; }

	IC	SelfRef	abs()					noexcept { x = _abs(x);				y = _abs(y);				z = _abs(z);				return *this; }
	IC	SelfRef	abs(SelfCRef v)		noexcept { x = _abs(v.x);			y = _abs(v.y);				z = _abs(v.z);				return *this; }

	IC	SelfRef ceil() { x = std::ceil(x);			y = std::ceil(y);			z = std::ceil(z);			return *this; }
	IC	SelfRef ceil(SelfCRef v) { x = std::ceil(v.x);		y = std::ceil(v.y);			z = std::ceil(v.z);			return *this; }

	IC	SelfRef floor() { x = std::floor(x);		y = std::floor(y);			z = std::floor(z);			return *this; }
	IC	SelfRef floor(SelfCRef v) { x = std::floor(v.x);		y = std::floor(v.y);		z = std::floor(v.z);		return *this; }

	ICF BOOL	similar(SelfCRef v, const T E = EPS_L) const { return _abs(x - v.x) < E && _abs(y - v.y) < E && _abs(z - v.z) < E; }

	IC	SelfRef	set_length(const T l)
	{
		mul(l / magnitude());
		return *this;
	}

	// Align vector3 by axis (!y)
	IC	SelfRef	align()
	{
		y = 0;
		if (_abs(z) >= _abs(x))
		{
			z /= _abs(z ? z : 1);
			x = 0;
		}
		else
		{
			x /= _abs(x);
			z = 0;
		}
		return *this;
	}

	// Squeeze
	IC	SelfRef	squeeze(const T Epsilon)
	{
		if (_abs(x) < Epsilon) x = 0;
		if (_abs(y) < Epsilon) y = 0;
		if (_abs(z) < Epsilon) z = 0;
		return *this;
	}

	// Clamp vector3
	IC	SelfRef	clamp(SelfCRef min, const Self &max)
	{
		::clamp(x, min.x, max.x);
		::clamp(y, min.y, max.y);
		::clamp(z, min.z, max.z);
		return *this;
	}
	IC	SelfRef	clamp(SelfCRef _v)
	{
		Self v;	v.abs(_v);
		::clamp(x, -v.x, v.x);
		::clamp(y, -v.y, v.y);
		::clamp(z, -v.z, v.z);
		return *this;
	}

	// Interpolate vectors (inertion)
	IC	SelfRef	inertion(SelfCRef p, const T v)
	{
		T inv = T(1) - v;
		x = v * x + inv * p.x;
		y = v * y + inv * p.y;
		z = v * z + inv * p.z;
		return *this;
	}

	// Average
	IC	SelfRef	average(SelfCRef p)
	{
		x = (x + p.x)*T(0.5);
		y = (y + p.y)*T(0.5);
		z = (z + p.z)*T(0.5);
		return *this;
	}
	IC	SelfRef	average(SelfCRef p1, SelfCRef p2)
	{
		x = (p1.x + p2.x)*T(0.5);
		y = (p1.y + p2.y)*T(0.5);
		z = (p1.z + p2.z)*T(0.5);
		return *this;
	}

	// Linear interpolation
	IC	SelfRef	lerp(SelfCRef p1, SelfCRef p2, const T t)
	{
		T invt = T(1) - t;
		x = p1.x*invt + p2.x*t;
		y = p1.y*invt + p2.y*t;
		z = p1.z*invt + p2.z*t;
		return *this;
	}

	// Direct vector3 from point P by dir D with length M
	IC	SelfRef	mad(SelfCRef d, const T m)
	{
		x += d.x*m;
		y += d.y*m;
		z += d.z*m;
		return *this;
	}
	IC	SelfRef	mad(SelfCRef p, SelfCRef d, const T m)
	{
		x = p.x + d.x*m;
		y = p.y + d.y*m;
		z = p.z + d.z*m;
		return *this;
	}
	IC	SelfRef	mad(SelfCRef d, SelfCRef s)
	{
		x += d.x*s.x;
		y += d.y*s.y;
		z += d.z*s.z;
		return *this;
	}
	IC	SelfRef	mad(SelfCRef p, SelfCRef d, SelfCRef &s)
	{
		x = p.x + d.x*s.x;
		y = p.y + d.y*s.y;
		z = p.z + d.z*s.z;
		return *this;
	}

	// SQ magnitude
	IC	T	square_magnitude() const
	{
		return x * x + y * y + z * z;
	}
	// magnitude
	IC	T	magnitude() const
	{
		return _sqrt(square_magnitude());
	}

	// Normalize
	IC	T	normalize_magn()
	{
		assert(square_magnitude() > std::numeric_limits<T>::min());
		T len = magnitude();
		T inv_len = T(1) / len;
		x *= inv_len;
		y *= inv_len;
		z *= inv_len;
		return len;
	}
	ICF	SelfRef normalize()
	{
		assert(square_magnitude() > std::numeric_limits<T>::min());
		T mag = _sqrt(T(1) / (x*x + y * y + z * z));
		x *= mag;
		y *= mag;
		z *= mag;
		return *this;
	}

	// Normalize
	ICF	SelfRef	normalize(SelfCRef v)
	{
		assert((v.x*v.x + v.y*v.y + v.z*v.z) > flt_zero);
		T mag = _sqrt(T(1) / (v.x*v.x + v.y*v.y + v.z*v.z));
		x = v.x*mag;
		y = v.y*mag;
		z = v.z*mag;
		return *this;
	}

	// Safe-Normalize
	ICF	SelfRef	normalize_safe()
	{
		T magnitude = x * x + y * y + z * z;
		if (magnitude > std::numeric_limits<T>::min())
		{
			magnitude = _sqrt(T(1) / magnitude);
			x *= magnitude;
			y *= magnitude;
			z *= magnitude;
		}
		return *this;
	}
	ICF	SelfRef	normalize_safe(SelfCRef v)
	{
		T magnitude = v.x*v.x + v.y*v.y + v.z*v.z;
		if (magnitude > std::numeric_limits<T>::min())
		{
			magnitude = _sqrt(1 / magnitude);
			x = v.x*magnitude;
			y = v.y*magnitude;
			z = v.z*magnitude;
		}
		return *this;
	}

	// DotProduct
	ICF	T		dotproduct(SelfCRef v) const
	{
		return x * v.x + y * v.y + z * v.z;
	}

	// CrossProduct
	ICF	SelfRef	crossproduct(SelfCRef v1, SelfCRef v2) // (v1,v2) -> this
	{
		x = v1.y  * v2.z - v1.z  * v2.y;
		y = v1.z  * v2.x - v1.x  * v2.z;
		z = v1.x  * v2.y - v1.y  * v2.x;
		return *this;
	}

	// Distance calculation
	IC	T	distance_to_xz(SelfCRef v) const { return _sqrt((x - v.x)*(x - v.x) + (z - v.z)*(z - v.z)); }
	IC	T	distance_to_xz_sqr(SelfCRef v) const { return	   (x - v.x)*(x - v.x) + (z - v.z)*(z - v.z); }
	ICF	T	distance_to_sqr(SelfCRef v) const { return	   (x - v.x)*(x - v.x) + (y - v.y)*(y - v.y) + (z - v.z)*(z - v.z); }
	ICF	T	distance_to(SelfCRef v) const { return _sqrt(distance_to_sqr(v)); }

	// Barycentric coords
	IC	SelfRef	from_bary(SelfCRef V1, SelfCRef V2, SelfCRef V3, T u, T v, T w)
	{
		x = V1.x*u + V2.x*v + V3.x*w;
		y = V1.y*u + V2.y*v + V3.y*w;
		z = V1.z*u + V2.z*v + V3.z*w;
		return *this;
	}
	IC	SelfRef	from_bary(SelfCRef V1, SelfCRef V2, SelfCRef V3, SelfCRef B)
	{
		from_bary(V1, V2, V3, B.x, B.y, B.z);
		return *this;
	}
	IC	SelfRef	from_bary4(SelfCRef V1, SelfCRef V2, SelfCRef V3, SelfCRef V4, T u, T v, T w, T t)
	{
		x = V1.x*u + V2.x*v + V3.x*w + V4.x*t;
		y = V1.y*u + V2.y*v + V3.y*w + V4.y*t;
		z = V1.z*u + V2.z*v + V3.z*w + V4.z*t;
		return *this;
	}

	IC SelfRef	mknormal_non_normalized(SelfCRef p0, SelfCRef p1, SelfCRef p2)
	{
		_vector3<T> v01, v12;
		v01.sub(p1, p0);
		v12.sub(p2, p1);
		crossproduct(v01, v12);
		return *this;
	};
	IC SelfRef	mknormal(SelfCRef p0, SelfCRef p1, SelfCRef p2)
	{
		mknormal_non_normalized(p0, p1, p2);
		normalize_safe();
		return *this;
	}

	IC	SelfRef	setHP(T h, T p)
	{
		T _ch = _cos(h), _cp = _cos(p), _sh = _sin(h), _sp = _sin(p);
		x = -_cp * _sh;
		y = _sp;
		z = _cp * _ch;
		return *this;
	}
	ICF	void	getHP(T& h, T& p) const
	{
		float hyp;

		if (fis_zero(x) && fis_zero(z))
		{
			h = 0.0f;
			if (!fis_zero(float(y)))
				p = (y > 0.0f) ? PI_DIV_2 : -PI_DIV_2;
			else
				p = 0.0f;
		}
		else
		{
			if (fis_zero(z))
				h = (x > 0.0f) ? -PI_DIV_2 : PI_DIV_2;
			else if (z < 0.0f)
				h = -(atanf(x / z) - PI);
			else
				h = -atanf(x / z);
			hyp = _sqrt(x*x + z * z);
			if (fis_zero(float(hyp)))
				p = (y > 0.0f) ? PI_DIV_2 : -PI_DIV_2;
			else
				p = atanf(y / hyp);
		}
	}

	IC float 	getH() const
	{
		if (fis_zero(x) && fis_zero(z))
		{
			return 0.0f;
		}
		else
		{
			if (fis_zero(z))
				return (x > 0.0f) ? -PI_DIV_2 : PI_DIV_2;
			else if (z < 0.0f)
				return -(atanf(x / z) - PI);
			else
				return -atanf(x / z);
		}
	}
	IC float 	getP() const
	{
		if (fis_zero(x) && fis_zero(z))
		{
			if (!fis_zero(float(y)))
				return (y > 0.0f) ? PI_DIV_2 : -PI_DIV_2;
			else
				return 0.0f;
		}
		else
		{
			float hyp = _sqrt(x*x + z * z);
			if (fis_zero(float(hyp)))
				return (y > 0.0f) ? PI_DIV_2 : -PI_DIV_2;
			else
				return atanf(y / hyp);
		}
	}

	IC	SelfRef	reflect(SelfCRef dir, SelfCRef norm)
	{
		return mad(dir, norm, -2 * dir.dotproduct(norm));
	}

	IC	SelfRef	slide(SelfCRef dir, SelfCRef norm)
	{	// non normalized
		return mad(dir, norm, -dir.dotproduct(norm));
	}

	IC static void generate_orthonormal_basis(SelfCRef dir, SelfRef up, SelfRef right)
	{
		T fInvLength;

		if (_abs(dir.x) >= _abs(dir.y))
		{
			// W.x or W.z is the largest magnitude component, swap them
			fInvLength = 1.f / _sqrt(dir.x*dir.x + dir.z*dir.z);
			up.x = -dir.z*fInvLength;
			up.y = 0.0f;
			up.z = +dir.x*fInvLength;
		}
		else
		{
			// W.y or W.z is the largest magnitude component, swap them
			fInvLength = 1.f / _sqrt(dir.y*dir.y + dir.z*dir.z);
			up.x = 0.0f;
			up.y = +dir.z*fInvLength;
			up.z = -dir.y*fInvLength;
		}
		right.crossproduct(up, dir); //. <->
	}
	IC static void generate_orthonormal_basis_normalized(SelfRef dir, SelfRef up, SelfRef right)
	{
		T fInvLength;
		dir.normalize();
		if (fsimilar(dir.y, 1.0f))
		{
			up.set(0.0f, 0.0f, 1.0f);
			fInvLength = 1.f / _sqrt(dir.x*dir.x + dir.y*dir.y);
			// cross (up,dir) and normalize (right)
			right.x = -dir.y * fInvLength;
			right.y = dir.x	 * fInvLength;
			right.z = 0.f;
			// cross (dir,right)
			up.x = -dir.z * right.y;
			up.y = dir.z * right.x;
			up.z = dir.x * right.y - dir.y * right.x;
		}
		else
		{
			up.set(0.0f, 1.0f, 0.0f);
			fInvLength = 1.0f / _sqrt(dir.x*dir.x + dir.z*dir.z);
			// cross (up,dir) and normalize (right)
			right.x = dir.z  * fInvLength;
			right.y = 0.f;
			right.z = -dir.x * fInvLength;
			// cross (dir,right)
			up.x = dir.y * right.z;
			up.y = dir.z * right.x - dir.x * right.z;
			up.z = -dir.y * right.x;
		}
	}
};
using Fvector = _vector3<float>;
using Fvector3 = _vector3<float>;
using Dvector = _vector3<double>;
using Dvector3 = _vector3<double>;
