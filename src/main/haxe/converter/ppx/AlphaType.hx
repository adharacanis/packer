package converter.ppx;

@:enum
abstract AlphaType(Int) from Int to Int
{
	var NON_TRANSPARENT = 0;
	var TRANSPARENT = 1;
	var SMIPLE_ALPHA = 0;
	var COMPLEX_ALPHA = 0;
}