package;

/**
 * ...
 * @author gNikro
 */
class MemoryUtils 
{

	public function new() 
	{
		
	}
	
	public static function toKBString(bytes:Int):String
	{
		var kb = bytes / 1024;
		var kbString = Std.string(kb);
		
		var dotPosition = kbString.indexOf(".");
		var prec = 0;
		
		if (dotPosition != -1)
			prec = kbString.length - kbString.indexOf(".");
		
		if (prec > 2)
			kbString = kbString.substr(0, dotPosition + 3);
		
		return '$kbString KB';
	}
	
}