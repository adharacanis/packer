// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#ifndef INCLUDED_mcli_internal_Kind
#define INCLUDED_mcli_internal_Kind

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

HX_DECLARE_CLASS2(mcli,internal,Kind)
namespace mcli{
namespace internal{


class Kind_obj : public hx::EnumBase_obj
{
	typedef hx::EnumBase_obj super;
		typedef Kind_obj OBJ_;

	public:
		Kind_obj() {};
		HX_DO_ENUM_RTTI;
		static void __boot();
		static void __register();
		static bool __GetStatic(const ::String &inName, Dynamic &outValue, hx::PropertyAccess inCallProp);
		::String GetEnumName( ) const { return HX_HCSTRING("mcli.internal.Kind","\xea","\xbd","\x8c","\xd7"); }
		::String __ToString() const { return HX_HCSTRING("Kind.","\x3a","\xb8","\xc8","\x74") + _hx_tag; }

		static ::mcli::internal::Kind Flag;
		static inline ::mcli::internal::Kind Flag_dyn() { return Flag; }
		static ::mcli::internal::Kind Function(::Array< ::Dynamic> args,::String varArgs);
		static ::Dynamic Function_dyn();
		static ::mcli::internal::Kind Message;
		static inline ::mcli::internal::Kind Message_dyn() { return Message; }
		static ::mcli::internal::Kind SubDispatch;
		static inline ::mcli::internal::Kind SubDispatch_dyn() { return SubDispatch; }
		static ::mcli::internal::Kind Var(::String t);
		static ::Dynamic Var_dyn();
		static ::mcli::internal::Kind VarHash( ::Dynamic key, ::Dynamic value, ::Dynamic valueIsArray);
		static ::Dynamic VarHash_dyn();
};

} // end namespace mcli
} // end namespace internal

#endif /* INCLUDED_mcli_internal_Kind */ 