package;

import massive.munit.TestSuite;
import converter.data.TestBaseColor;

class DataTestSuit extends massive.munit.TestSuite
{		
	public function new()
	{
		super();

		add(TestBaseColor);
	}
}