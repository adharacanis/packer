package utils;

import converter.data.ColorSpace;
import converter.data.Utils;
import converter.ppx.PaletteMap;
import haxe.io.Bytes;

class SystemTools
{

	public function new() 
	{
		
	}
	
	public static function tracePalleteMap(palleteMap:PaletteMap)
	{
		//var file = File.write(path, true);
		var imageData:ImageData;
		
		var width:UInt = Math.floor(Math.sqrt(palleteMap.colorMap.length));
		var height:UInt = width;
		
		var bytes:Bytes = Bytes.alloc(palleteMap.colorMap.length);
		
		var c:UInt = 0;
		for (i in 0...width)
		{
			for (j in 0...height)
			{
				var colorValue:UInt = palleteMap.colorMap[c];
				Utils.scaleColor(colorValue, ColorSpace.COLOR_SPACE_4444, ColorSpace.COLOR_SPACE_8888);
				bytes.setInt32(c, colorValue);
				
				c++;
			}
		}
		
		imageData = {width:width, height:height, data:bytes, alpha:true};
		
		var file = File.write("paletteMap.png", true);
		var writer = new format.png.Writer(file);
		writer.write(format.png.Tools.build32BGRA(width, height, bytes));
		//file.close();
		
		//FileSystem.savePNG("palleteMap.png", imageData);
	}
	
}