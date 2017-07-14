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
		trace("ASDASDAS");
       assertThat(5, equalTo(5));
    }
}