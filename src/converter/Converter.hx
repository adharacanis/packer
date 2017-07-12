package converter;

import haxe.io.Bytes;
	
class Converter 
{
	

	public function new() 
	{
		
	}
	
	public static function convertTo4444(data:ImageData):ImageData
	{
		var output:Bytes = Bytes.alloc(data.width * data.height * 2);
		
		var inPosition:Int = 0;
		var outPosition:Int = 0;
		var isAlpha:Bool = false;
		
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
				
				if (a != 255 || a != 0)
					isAlpha = true;
				
				output.set(outPosition++, b | g);
				output.set(outPosition++, r | a);
			}
		}
		
		Console.println('original size: ${MemoryUtils.toKBString(data.data.length)}');
		Console.println('ppx size: ${MemoryUtils.toKBString(output.length)}');
		output = format.tools.Deflate.run(output, 9);
		Console.println('compressed size: ${MemoryUtils.toKBString(output.length)}');
		
		return {data:output, width:data.width, height:data.height, alpha:isAlpha};
	}
	
}