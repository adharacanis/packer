// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#ifndef INCLUDED_mcli_DispatchError
#define INCLUDED_mcli_DispatchError

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

HX_DECLARE_CLASS1(mcli,DispatchError)
namespace mcli{


class DispatchError_obj : public hx::EnumBase_obj
{
	typedef hx::EnumBase_obj super;
		typedef DispatchError_obj OBJ_;

	public:
		DispatchError_obj() {};
		HX_DO_ENUM_RTTI;
		static void __boot();
		static void __register();
		static bool __GetStatic(const ::String &inName, Dynamic &outValue, hx::PropertyAccess inCallProp);
		::String GetEnumName( ) const { return HX_HCSTRING("mcli.DispatchError","\x33","\xe0","\x3b","\xa3"); }
		::String __ToString() const { return HX_HCSTRING("DispatchError.","\xe0","\x21","\x1d","\x37") + _hx_tag; }

		static ::mcli::DispatchError ArgumentFormatError(::String type,::String passed);
		static ::Dynamic ArgumentFormatError_dyn();
		static ::mcli::DispatchError DecoderNotFound(::String type);
		static ::Dynamic DecoderNotFound_dyn();
		static ::mcli::DispatchError MissingArgument;
		static inline ::mcli::DispatchError MissingArgument_dyn() { return MissingArgument; }
		static ::mcli::DispatchError MissingOptionArgument(::String opt,::String name);
		static ::Dynamic MissingOptionArgument_dyn();
		static ::mcli::DispatchError TooManyArguments;
		static inline ::mcli::DispatchError TooManyArguments_dyn() { return TooManyArguments; }
		static ::mcli::DispatchError UnknownArgument(::String arg);
		static ::Dynamic UnknownArgument_dyn();
};

} // end namespace mcli

#endif /* INCLUDED_mcli_DispatchError */ 