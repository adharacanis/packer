package;

import converter.Converter;
import mcli.CommandLine;
import mcli.Dispatch;

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
			
		Console.silent = silent;
			
		var fileType:String = path.substr(path.lastIndexOf(".") + 1, path.length);
		
		var data:ImageData = null;
		
		if(fileType.toLowerCase() == "png")
			data = FileSystem.readPNG(path);
		else
		{
			Console.error('format $fileType is not supported');
			Sys.exit(1);
		}
			
		var convertedData = Converter.convertTo4444(data);
		
		FileSystem.savePPX(output, convertedData);
		
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