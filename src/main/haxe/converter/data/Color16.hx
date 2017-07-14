package converter.data;

class Color16 extends Color implements IColor
{

	public function new() 
	{
		super(new ColorSpace(4, 4, 4, 4));
	}
	
}