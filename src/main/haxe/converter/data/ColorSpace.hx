package converter.data;

class ColorSpace 
{
	public static inline COLOR_SPACE_565 = new ColorSpace(5, 6, 5);
	public static inline COLOR_SPACE_4444 = new ColorSpace(4, 4, 4, 4);
	public static inline COLOR_SPACE_5551 = new ColorSpace(5, 5, 5, 1);
	public static inline COLOR_SPACE_8888 = new ColorSpace(8, 8, 8, 8);
	public static inline COLOR_SPACE_888 = new ColorSpace(8, 8, 8);
	
	var r:UInt;
	var g:UInt;
	var b:UInt;
	var a:UInt;
	
	var _redOffset:UInt = 0;
	var _greenOffset:UInt = 0;
	var _blueOffset:UInt = 0;
	var _alphaOffset:UInt = 0;
	
	var _redBitsMask:UInt = 0;
	var _greenBitsMask:UInt = 0;
	var _blueBitsMask:UInt = 0;
	var _alphaBitsMask:UInt = 0;
	
	public var redBitsMask(get, null):UInt;
	public var greenBitsMask(get, null):UInt;
	public var blueBitsMask(get, null):UInt;
	public var alphaBitsMask(get, null):UInt;
	
	public var redOffset(get, null):UInt;
	public var greenOffset(get, null):UInt;
	public var blueOffset(get, null):UInt;
	public var alphaOffset(get, null):UInt;
	
	public function new(r:UInt, g:UInt, b:UInt, a:UInt = 0) 
	{
		this.a = a;
		this.b = b;
		this.g = g;
		this.r = r;
		
		_redBitsMask = calculateBitsMask(r);
		_greenBitsMask = calculateBitsMask(g);
		_blueBitsMask = calculateBitsMask(b);
		
		if (a != 0)
		{
			_alphaBitsMask = calculateBitsMask(a);
			
			_blueOffset = a;
		}
		else
			_blueOffset = 0;
			
		_greenOffset = _blueOffset + b;
		_redOffset = _greenOffset + g;
	}
	
	public inline function hasAlpha():Bool
	{
		return a != 0;
	}
	
	inline function calculateBitsMask(size:UInt):UInt
	{
		return Math.floor(Math.pow(2, size)) - 1;
	}
	
	function get_redOffset():UInt 
	{
		return _redOffset;
	}
	
	function get_greenOffset():UInt 
	{
		return _greenOffset;
	}
	
	function get_blueOffset():UInt 
	{
		return _blueOffset;
	}
	
	function get_alphaOffset():UInt 
	{
		return _alphaOffset;
	}
	
	function get_redBitsMask():UInt 
	{
		return _redBitsMask;
	}
	
	function get_greenBitsMask():UInt 
	{
		return _greenBitsMask;
	}
	
	function get_blueBitsMask():UInt 
	{
		return _blueBitsMask;
	}
	
	function get_alphaBitsMask():UInt 
	{
		return _alphaBitsMask;
	}
	
}