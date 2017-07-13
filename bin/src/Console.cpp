// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#include <hxcpp.h>

#ifndef INCLUDED_Console
#include <Console.h>
#endif
#ifndef INCLUDED_Sys
#include <Sys.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_9b0ca03e92855c49_13_new,"Console","new",0xec721ba9,"Console.new","Console.hx",13,0xdfc4cbe7)
HX_LOCAL_STACK_FRAME(_hx_pos_9b0ca03e92855c49_19_println,"Console","println",0xed13ffb8,"Console.println","Console.hx",19,0xdfc4cbe7)
HX_LOCAL_STACK_FRAME(_hx_pos_9b0ca03e92855c49_25_error,"Console","error",0x5be83b51,"Console.error","Console.hx",25,0xdfc4cbe7)
HX_LOCAL_STACK_FRAME(_hx_pos_9b0ca03e92855c49_10_boot,"Console","boot",0xef7f18c9,"Console.boot","Console.hx",10,0xdfc4cbe7)

void Console_obj::__construct(){
            	HX_STACKFRAME(&_hx_pos_9b0ca03e92855c49_13_new)
            	}

Dynamic Console_obj::__CreateEmpty() { return new Console_obj; }

void *Console_obj::_hx_vtable = 0;

Dynamic Console_obj::__Create(hx::DynamicArray inArgs)
{
	hx::ObjectPtr< Console_obj > _hx_result = new Console_obj();
	_hx_result->__construct();
	return _hx_result;
}

bool Console_obj::_hx_isInstanceOf(int inClassId) {
	return inClassId==(int)0x00000001 || inClassId==(int)0x3ddba753;
}

bool Console_obj::silent;

void Console_obj::println( ::Dynamic v){
            	HX_STACKFRAME(&_hx_pos_9b0ca03e92855c49_19_println)
HXDLIN(  19)		if (!(::Console_obj::silent)) {
HXLINE(  20)			::Sys_obj::println(v);
            		}
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(Console_obj,println,(void))

void Console_obj::error( ::Dynamic v){
            	HX_STACKFRAME(&_hx_pos_9b0ca03e92855c49_25_error)
HXDLIN(  25)		::Sys_obj::println(v);
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(Console_obj,error,(void))


Console_obj::Console_obj()
{
}

bool Console_obj::__GetStatic(const ::String &inName, Dynamic &outValue, hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 5:
		if (HX_FIELD_EQ(inName,"error") ) { outValue = error_dyn(); return true; }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"silent") ) { outValue = ( silent ); return true; }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"println") ) { outValue = println_dyn(); return true; }
	}
	return false;
}

bool Console_obj::__SetStatic(const ::String &inName,Dynamic &ioValue,hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 6:
		if (HX_FIELD_EQ(inName,"silent") ) { silent=ioValue.Cast< bool >(); return true; }
	}
	return false;
}

#if HXCPP_SCRIPTABLE
static hx::StorageInfo *Console_obj_sMemberStorageInfo = 0;
static hx::StaticInfo Console_obj_sStaticStorageInfo[] = {
	{hx::fsBool,(void *) &Console_obj::silent,HX_HCSTRING("silent","\x95","\x76","\xcd","\xb7")},
	{ hx::fsUnknown, 0, null()}
};
#endif

static void Console_obj_sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(Console_obj::__mClass,"__mClass");
	HX_MARK_MEMBER_NAME(Console_obj::silent,"silent");
};

#ifdef HXCPP_VISIT_ALLOCS
static void Console_obj_sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(Console_obj::__mClass,"__mClass");
	HX_VISIT_MEMBER_NAME(Console_obj::silent,"silent");
};

#endif

hx::Class Console_obj::__mClass;

static ::String Console_obj_sStaticFields[] = {
	HX_HCSTRING("silent","\x95","\x76","\xcd","\xb7"),
	HX_HCSTRING("println","\xef","\xdb","\x33","\x84"),
	HX_HCSTRING("error","\xc8","\xcb","\x29","\x73"),
	::String(null())
};

void Console_obj::__register()
{
	hx::Object *dummy = new Console_obj;
	Console_obj::_hx_vtable = *(void **)dummy;
	hx::Static(__mClass) = new hx::Class_obj();
	__mClass->mName = HX_HCSTRING("Console","\x37","\x13","\x27","\xe6");
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &Console_obj::__GetStatic;
	__mClass->mSetStaticField = &Console_obj::__SetStatic;
	__mClass->mMarkFunc = Console_obj_sMarkStatics;
	__mClass->mStatics = hx::Class_obj::dupFunctions(Console_obj_sStaticFields);
	__mClass->mMembers = hx::Class_obj::dupFunctions(0 /* sMemberFields */);
	__mClass->mCanCast = hx::TCanCast< Console_obj >;
#ifdef HXCPP_VISIT_ALLOCS
	__mClass->mVisitFunc = Console_obj_sVisitStatics;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = Console_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = Console_obj_sStaticStorageInfo;
#endif
	hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

void Console_obj::__boot()
{
{
            	HX_STACKFRAME(&_hx_pos_9b0ca03e92855c49_10_boot)
HXDLIN(  10)		silent = false;
            	}
}
