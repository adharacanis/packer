package converter.data;

import converter.ppx.FixedPaletteMap4444;
import org.hamcrest.MatchersBase;

class UtilsTest extends MatchersBase
{
	//0101 0101 0101 0101 0101 0101 0010 1010
	//85        85        85        42
	public static var color32BitAlpha:UInt = 1431655722;
	
	public function new() 
	{
		super();
	}
	
	@Test
	public function getColorComponents()
	{
		var colorComponents = Utils.getColorComponents(color32BitAlpha, ColorSpace.COLOR_SPACE_8888);
		
		assertThat(colorComponents.r, equalTo(85));
		assertThat(colorComponents.g, equalTo(85));
		assertThat(colorComponents.b, equalTo(85));
		assertThat(colorComponents.a, equalTo(42));
		
		utils.SystemTools.tracePalleteMap(new FixedPaletteMap4444());
	}
	
	@Test
	public function scaleColor()
	{
		var outputColor = Utils.scaleColor(color32BitAlpha, ColorSpace.COLOR_SPACE_8888, ColorSpace.COLOR_SPACE_4444);
		trace(outputColor);
	}
	
}