package converter.data;

class Color565 extends Color implements IColor
{

	public function new() 
	{
		super(new ColorSpace(5, 6, 5));
	}
	
}