package converter.data;
import cpp.Void;

class Utils
{

	public function new() 
	{
		
	}
	
	public static function scaleColor(value:UInt, origin:ColorSpace, destination:ColorSpace):ColorComponents
	{
		var colorComponents:ColorComponents = getColorComponents(value, origin);
		colorComponents.r = linearEquation(colorComponents.r, origin.redBitsMask, destination.redBitsMask);
		colorComponents.g = linearEquation(colorComponents.g, origin.greenBitsMask, destination.greenBitsMask);
		colorComponents.b = linearEquation(colorComponents.b, origin.blueBitsMask, destination.blueBitsMask);
		colorComponents.a = linearEquation(colorComponents.a, origin.alphaBitsMask, destination.alphaBitsMask);
		
		return colorComponents;
	}
	
	public static function getColorComponents(value:UInt, colorSpace:ColorSpace):ColorComponents
	{
		return {
			r: value >> colorSpace.redOffset   & colorSpace.redBitsMask,
			g: value >> colorSpace.greenOffset & colorSpace.greenBitsMask,
			b: value >> colorSpace.blueOffset  & colorSpace.blueBitsMask,
			a: value >> colorSpace.alphaOffset & colorSpace.alphaBitsMask
		};
	}
	
	public static function linearEquation(input:UInt, maxOutput:UInt, maxInput:UInt):UInt
	{
		return Math.floor((input * maxOutput / maxInput) + 0.5);
	}
	
	public function simpleShiftRight(input:UInt, maxOutput:UInt, maxInput:UInt):UInt
	{
		return input >> (maxOutput - maxInput);
	}
	
	public function simpleShiftLeft(input:UInt, maxOutput:UInt, maxInput:UInt):UInt
	{
		var shift:UInt = maxOutput - maxInput;
		return input << shift | (input >> shift);
	}
}