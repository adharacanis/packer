package;

import converter.data.UtilsTest;
import massive.munit.TestSuite;
import converter.data.TestBaseColor;

class DataTestSuit extends massive.munit.TestSuite
{		
	@:keep public function new()
	{
		super();

		add(TestBaseColor);
		add(UtilsTest);
	}
}