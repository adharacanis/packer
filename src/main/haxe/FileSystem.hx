package;

import haxe.io.Bytes;
import sys.io.File;
import sys.io.FileOutput;

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
	
	public static function savePNG(path:String, data:ImageData)
	{
		//var file = File.write(path, true);
		//var writer = new format.png.Writer(file);
		//writer.write(format.png.Tools.build32BGRA(data.width, data.height, data.data));
		//file.close();
	}
	
	
	public static function readPPX(path:String)
	{
		var file = File.read(path, true);
		var nullByte = file.readByte();
		var sig = file.readByte();
		var width = file.readUInt16();
		var height = file.readUInt16();
		
		var data:Bytes = file.readAll();
		
		format.tools.Inflate.run(data);
		
		trace(nullByte, sig, width, height);
	}
	
	public static function savePPX(path:String, data:ImageData)
	{
		var file = File.write(path, true);
		addPPXHeader(data);
		trace(data.data.length);
		file.writeFullBytes(data.data, 0, data.data.length);
		file.close();
	}
	
	public static function addPPXHeader(imageData:ImageData)
	{
		trace(imageData.data.length);
		var data:Bytes = Bytes.alloc(6 + imageData.data.length);
		
		data.setUInt16(0, 0 | (10 << 8));
		data.setUInt16(2, imageData.width);
		data.setUInt16(4, imageData.height);
		data.blit(6, imageData.data, 0, imageData.data.length);
		trace(data.length);
		imageData.data = data;
	}
}