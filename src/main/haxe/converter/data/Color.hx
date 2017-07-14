package converter.data;

class Color implements IColor
{
	@:isVar var a(get, set):UInt;
	@:isVar var r(get, set):UInt;
	@:isVar var g(get, set):UInt;
	@:isVar var b(get, set):UInt;
	
	public var colorSpace:ColorSpace;

	private function new(colorSpace:ColorSpace) 
	{
		this.colorSpace = colorSpace;
	}
	
	public function getColorValue():UInt
	{
		return (r << colorSpace.redOffset) | (g << colorSpace.greenOffset) | (b << colorSpace.blueOffset) | a;
	}
	
	public function setFromColorValue(value:UInt)
	{
		//TEST
		//10101 011110 00110 //43974
		//21    30     6
		//0101 0001 0010 1100 //20780
		//5    1    2    12
		
		//trace('ColorOffset', colorSpace.redOffset, colorSpace.greenOffset, colorSpace.blueOffset, colorSpace.alphaOffset);
		//trace('ColorMask', colorSpace.redBitsMask, colorSpace.greenBitsMask, colorSpace.blueBitsMask, colorSpace.alphaBitsMask);
		
		r = value >> colorSpace.redOffset & colorSpace.redBitsMask;
		g = value >> colorSpace.greenOffset & colorSpace.greenBitsMask;
		b = value >> colorSpace.blueOffset & colorSpace.blueBitsMask;
		
		if(colorSpace.alphaBitsMask != 0)
			a = value & colorSpace.alphaBitsMask;
			
		//trace('OutputColor', r, g, b, a);
	}
	
	function get_a():UInt 
	{
		return a;
	}
	
	function set_a(value:UInt):UInt 
	{
		return a = value;
	}
	
	function get_r():UInt 
	{
		return r;
	}
	
	function set_r(value:UInt):UInt 
	{
		return r = value;
	}
	
	function get_g():UInt 
	{
		return g;
	}
	
	function set_g(value:UInt):UInt 
	{
		return g = value;
	}
	
	function get_b():UInt 
	{
		return b;
	}
	
	function set_b(value:UInt):UInt 
	{
		return b = value;
	}
	
}