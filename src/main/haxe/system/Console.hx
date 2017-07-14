package system;

/**
 * ...
 * @author gNikro
 */
class Console 
{

	public static var silent:Bool = false;
	
	public function new() 
	{
		
	}
	
	public static function println(v:Dynamic):Void
	{
		if(!silent)
			Sys.println(v);
	}
	
	static public function error(v:Dynamic) 
	{
		Sys.println(v);
	}
	
}