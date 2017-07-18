package;

import converter.Converter;
//import converter.ppx.FixedPaletteMap4444;
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
		//utils.SystemTools.tracePalleteMap(new FixedPaletteMap4444());
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