package;

import sys.io.File;

class FileSystem 
{

	public function new() 
	{
		
	}
	
	public static function readPNG(path:String):ImageData
	{
		var file = File.read(path, true);
		var reader = new format.png.Reader(file);
		var pngData = reader.read();
		var header = format.png.Tools.getHeader(pngData);
		
		var data:ImageData = {data:format.png.Tools.extract32(pngData), width:header.width, height:header.height, alpha:true};
		
		file.close();
		
		return data;
	}
	
	public static function savePPX(path:String, data:ImageData):Void
	{
		var file = File.write(path, true);
		file.write(data.data);
		file.close();
	}
}