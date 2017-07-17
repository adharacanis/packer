package converter.data;

import massive.munit.Assert;
import org.hamcrest.MatchersBase;

class TestBaseColor extends MatchersBase
{

    public function new()
    {
        super();
    }

    @BeforeClass
    public function beforeClass():Void
    {
    }

    @AfterClass
    public function afterClass():Void
    {
    }

    @Before
    public function setup():Void
    {
        
    }

    @After
    public function tearDown():Void
    {
    }

    @Test
    public function setFromColorValue()
    {	
		//565
		//10101 011110 00110 //43974
		//21    30     6
		
		//4444
		//0101 0001 0010 1100 //20780
		//5    1    2    12
		
		//16 bit no alpha
		var color = new Color(ColorSpace.COLOR_SPACE_565);
		color.setFromColorValue(43974);
		assertThat(color.r, equalTo(21), "red channel should be 21 / bits 10101");
		assertThat(color.g, equalTo(30), "green channel should be 30 / bits 011110");
		assertThat(color.b, equalTo(6), "blue channel should be 6 / bits 00100");
		assertThat(color.a, equalTo(0), "color without alpha");
		assertThat(color.getColorValue(), equalTo(43974), "combine color");
		
		//16 bit 4 bit per channel
		var color = new Color(ColorSpace.COLOR_SPACE_4444);
		color.setFromColorValue(20780);
		assertThat(color.r, equalTo(5), "red channel should be 5 / bits 0101");
		assertThat(color.g, equalTo(1), "green channel should be 1 / bits 0001");
		assertThat(color.b, equalTo(2), "blue channel should be 2 / bits 0010");
		assertThat(color.a, equalTo(12), "ALPHA channel should be 12 / bits 1100");
		assertThat(color.getColorValue(), equalTo(20780), "combine color");
    }
}