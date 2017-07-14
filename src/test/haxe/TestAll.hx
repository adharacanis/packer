package;

import utest.Runner;
import utest.ui.Report;
import converter.data.TestBaseColor;

class TestAll
{
	static var isInitialize:Bool = false;

	public static function main() {
		if (isInitialize == false) {
			isInitialize = true;
			new TestAll();
		}
	}
	
	public function new() {
		initCases(new Runner());
	}
	
	public function initCases(runner:Runner) {
		trace(Type.getInstanceFields(TestBaseColor));
		runner.addCase(new TestBaseColor());

		Report.create(runner);
		runner.run();
	}
}