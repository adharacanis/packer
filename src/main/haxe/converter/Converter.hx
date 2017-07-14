package converter;

import haxe.io.Bytes;
import system.Console;
	
class Converter 
{
	private static var MAX_8:Int = 255;
	private static var MAX_4:Int = 15;

	public function new() 
	{
		
	}
	
	public static function convertTo4444(data:ImageData):ImageData
	{
		var output:Bytes = Bytes.alloc(data.width * data.height * 2);
		
		var inPosition:Int = 0;
		var outPosition:Int = 0;
		var isAlpha:Bool = false;
		
		var colorSpace = 15;
		for (i in 0...data.width)
		{
			for (j in 0...data.height)
			{
				//var color:UInt = data.data.getInt32(position);
				//trace(position, color);
				var b = data.data.get(inPosition++);//(color >> 24) & 0xFF;
				var g = data.data.get(inPosition++);//(color >> 16 ) & 0xFF;
				var r = data.data.get(inPosition++);//(color >> 8) & 0xFF;
				var a = data.data.get(inPosition++);//(color & 0xFF);
				
				r = Math.floor(r / MAX_8 * MAX_4 + 0.5);
				g = Math.floor(g / MAX_8 * MAX_4 + 0.5);
				b = Math.floor(b / MAX_8 * MAX_4 + 0.5);
				a = Math.floor(a / MAX_8 * MAX_4 + 0.5);
				//00111111 11100010
				
				//11100010
				//14 2
				//14 1110
				//2  0010
				
				//00111111
				//3 15
				//3  0011
				//15 1111
				//trace(r, g, b, a, r << 4 | g);
				
				if (a != 255 || a != 0)
					isAlpha = true;
				
				
				output.set(outPosition++, b << 4 | a);
				output.set(outPosition++, r << 4 | g);
			}
		}
		
		system.Console.println('original size: ${MemoryUtils.toKBString(data.data.length)}');
		system.Console.println('ppx size: ${MemoryUtils.toKBString(output.length)}');
		
		FileSystem.savePNG("test.png", {data:output, width:data.width, height:data.height, alpha:isAlpha});
		
		output = format.tools.Deflate.run(output, 9);

		system.Console.println('compressed size: ${MemoryUtils.toKBString(output.length)}');
		
		return {data:output, width:data.width, height:data.height, alpha:isAlpha};
	}
	
}