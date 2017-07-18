package converter.ppx;

class FixedPaletteMap4444 extends PaletteMap
{

	public function new() 
	{
		super();
		
		var colorCount:Int = 15 * 15 * 15;
		
		var p:Int = 0;
		for (i in 0...15)
			for (j in 0...15)
				for(k in 0...15)
					colorMap[p++] = i | j | k;
	}
}