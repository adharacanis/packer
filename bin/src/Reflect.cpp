// Generated by Haxe 3.4.2 (git build master @ 890f8c7)
#include <hxcpp.h>

#ifndef INCLUDED_Reflect
#include <Reflect.h>
#endif

HX_LOCAL_STACK_FRAME(_hx_pos_4da882ff114ca894_30_hasField,"Reflect","hasField",0xef8c2571,"Reflect.hasField","C:\\HaxeToolkit\\haxe\\std/cpp/_std/Reflect.hx",30,0x487b3827)
HX_LOCAL_STACK_FRAME(_hx_pos_4da882ff114ca894_34_field,"Reflect","field",0x54b04da9,"Reflect.field","C:\\HaxeToolkit\\haxe\\std/cpp/_std/Reflect.hx",34,0x487b3827)
HX_LOCAL_STACK_FRAME(_hx_pos_4da882ff114ca894_43_getProperty,"Reflect","getProperty",0x632ca13a,"Reflect.getProperty","C:\\HaxeToolkit\\haxe\\std/cpp/_std/Reflect.hx",43,0x487b3827)
HX_LOCAL_STACK_FRAME(_hx_pos_4da882ff114ca894_47_setProperty,"Reflect","setProperty",0x6d99a846,"Reflect.setProperty","C:\\HaxeToolkit\\haxe\\std/cpp/_std/Reflect.hx",47,0x487b3827)
HX_LOCAL_STACK_FRAME(_hx_pos_4da882ff114ca894_51_callMethod,"Reflect","callMethod",0xb49e52d0,"Reflect.callMethod","C:\\HaxeToolkit\\haxe\\std/cpp/_std/Reflect.hx",51,0x487b3827)
HX_LOCAL_STACK_FRAME(_hx_pos_4da882ff114ca894_70_compare,"Reflect","compare",0xa2d92b54,"Reflect.compare","C:\\HaxeToolkit\\haxe\\std/cpp/_std/Reflect.hx",70,0x487b3827)

void Reflect_obj::__construct() { }

Dynamic Reflect_obj::__CreateEmpty() { return new Reflect_obj; }

void *Reflect_obj::_hx_vtable = 0;

Dynamic Reflect_obj::__Create(hx::DynamicArray inArgs)
{
	hx::ObjectPtr< Reflect_obj > _hx_result = new Reflect_obj();
	_hx_result->__construct();
	return _hx_result;
}

bool Reflect_obj::_hx_isInstanceOf(int inClassId) {
	return inClassId==(int)0x00000001 || inClassId==(int)0x0e2f4039;
}

bool Reflect_obj::hasField( ::Dynamic o,::String field){
            	HX_STACKFRAME(&_hx_pos_4da882ff114ca894_30_hasField)
HXDLIN(  30)		return ((bool)hx::IsNotNull( o ) && (bool)o->__HasField(field));
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(Reflect_obj,hasField,return )

 ::Dynamic Reflect_obj::field( ::Dynamic o,::String field){
            	HX_STACKFRAME(&_hx_pos_4da882ff114ca894_34_field)
HXDLIN(  34)		return hx::IsNull( o ) ? null() : o->__Field(field,hx::paccNever);
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(Reflect_obj,field,return )

 ::Dynamic Reflect_obj::getProperty( ::Dynamic o,::String field){
            	HX_STACKFRAME(&_hx_pos_4da882ff114ca894_43_getProperty)
HXDLIN(  43)		return hx::IsNull( o ) ? null() : o->__Field(field,hx::paccAlways);
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(Reflect_obj,getProperty,return )

void Reflect_obj::setProperty( ::Dynamic o,::String field, ::Dynamic value){
            	HX_STACKFRAME(&_hx_pos_4da882ff114ca894_47_setProperty)
HXDLIN(  47)		if (hx::IsNotNull( o )) {
HXLINE(  48)			o->__SetField(field,value,hx::paccAlways);
            		}
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC3(Reflect_obj,setProperty,(void))

 ::Dynamic Reflect_obj::callMethod( ::Dynamic o, ::Dynamic func,::cpp::VirtualArray args){
            	HX_STACKFRAME(&_hx_pos_4da882ff114ca894_51_callMethod)
HXLINE(  52)		if (((bool)hx::IsNotNull( func ) && (bool)(( (int)(func->__GetType()) ) == (int)3))) {
HXLINE(  53)			func = o->__Field(func,hx::paccDynamic);
            		}
HXLINE(  54)		func->__SetThis(o);
HXLINE(  55)		return func->__Run(args);
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC3(Reflect_obj,callMethod,return )

int Reflect_obj::compare( ::Dynamic a, ::Dynamic b){
            	HX_STACKFRAME(&_hx_pos_4da882ff114ca894_70_compare)
HXDLIN(  70)		return hx::IsEq( a,b ) ? (int)0 : hx::IsGreater( a,b ) ? (int)1 : (int)-1;
            	}


STATIC_HX_DEFINE_DYNAMIC_FUNC2(Reflect_obj,compare,return )


Reflect_obj::Reflect_obj()
{
}

bool Reflect_obj::__GetStatic(const ::String &inName, Dynamic &outValue, hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 5:
		if (HX_FIELD_EQ(inName,"field") ) { outValue = field_dyn(); return true; }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"compare") ) { outValue = compare_dyn(); return true; }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"hasField") ) { outValue = hasField_dyn(); return true; }
		break;
	case 10:
		if (HX_FIELD_EQ(inName,"callMethod") ) { outValue = callMethod_dyn(); return true; }
		break;
	case 11:
		if (HX_FIELD_EQ(inName,"getProperty") ) { outValue = getProperty_dyn(); return true; }
		if (HX_FIELD_EQ(inName,"setProperty") ) { outValue = setProperty_dyn(); return true; }
	}
	return false;
}

#if HXCPP_SCRIPTABLE
static hx::StorageInfo *Reflect_obj_sMemberStorageInfo = 0;
static hx::StaticInfo *Reflect_obj_sStaticStorageInfo = 0;
#endif

static void Reflect_obj_sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(Reflect_obj::__mClass,"__mClass");
};

#ifdef HXCPP_VISIT_ALLOCS
static void Reflect_obj_sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(Reflect_obj::__mClass,"__mClass");
};

#endif

hx::Class Reflect_obj::__mClass;

static ::String Reflect_obj_sStaticFields[] = {
	HX_HCSTRING("hasField","\x00","\xdf","\xeb","\x8c"),
	HX_HCSTRING("field","\xba","\x94","\x93","\x00"),
	HX_HCSTRING("getProperty","\x0b","\x0b","\x2c","\xd2"),
	HX_HCSTRING("setProperty","\x17","\x12","\x99","\xdc"),
	HX_HCSTRING("callMethod","\x1f","\xce","\x8a","\x34"),
	HX_HCSTRING("compare","\xa5","\x18","\x69","\x83"),
	::String(null())
};

void Reflect_obj::__register()
{
	hx::Object *dummy = new Reflect_obj;
	Reflect_obj::_hx_vtable = *(void **)dummy;
	hx::Static(__mClass) = new hx::Class_obj();
	__mClass->mName = HX_HCSTRING("Reflect","\x1d","\xac","\x7a","\xb6");
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &Reflect_obj::__GetStatic;
	__mClass->mSetStaticField = &hx::Class_obj::SetNoStaticField;
	__mClass->mMarkFunc = Reflect_obj_sMarkStatics;
	__mClass->mStatics = hx::Class_obj::dupFunctions(Reflect_obj_sStaticFields);
	__mClass->mMembers = hx::Class_obj::dupFunctions(0 /* sMemberFields */);
	__mClass->mCanCast = hx::TCanCast< Reflect_obj >;
#ifdef HXCPP_VISIT_ALLOCS
	__mClass->mVisitFunc = Reflect_obj_sVisitStatics;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = Reflect_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = Reflect_obj_sStaticStorageInfo;
#endif
	hx::_hx_RegisterClass(__mClass->mName, __mClass);
}
