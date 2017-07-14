package;

import converter.Converter;
import converter.data.Color16;
import converter.data.Color32;
import converter.data.Color565;
import mcli.CommandLine;
import mcli.Dispatch;
import system.Console;

class Main extends CommandLine
{
	/**
		output path

		@value	path
		@alias  out
	**/
	public var output:String;
	
	/**
		without output
	**/
	public var silent:Bool = false;
	
	static function main() 
	{
		
		var color:Color16 = new Color16();
		var color565:Color565 = new Color565();
		color.setFromColorValue(20780);
		color565.setFromColorValue(43974);
		
		trace(color.getColorValue());
		trace(color565.getColorValue());
		
		new Dispatch(Sys.args()).dispatch(new Main());
	}
	
	/**
		input path

		@alias  in
	**/
	public function input(path:String)
	{
		if (output == null)
			output = path.substr(0, path.lastIndexOf(".")) + ".ppx";
			
		system.Console.silent = silent;
			
		var fileType:String = path.substr(path.lastIndexOf(".") + 1, path.length);
		
		var data:ImageData = null;
		
		if(fileType.toLowerCase() == "png")
			data = FileSystem.readPNG(path);
		else
		{
			system.Console.error('format $fileType is not supported');
			Sys.exit(1);
		}
			
		var convertedData = Converter.convertTo4444(data);
		
		FileSystem.savePPX(output, convertedData);
		FileSystem.readPPX(output);
		
		Sys.exit(0);
	}
	
	public function new() 
	{
		super();
		preventDefault();
	}
	
	/**
	HELP
	**/
	public function help()
	{
		Sys.println(this.toString());
	}
	
}