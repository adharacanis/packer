import massive.munit.client.RichPrintClient;
import massive.munit.client.HTTPClient;
import massive.munit.client.SummaryReportClient;
import mcover.coverage.CoverageLogger;
import mcover.coverage.MCoverage;
import mcover.coverage.munit.client.MCoverPrintClient;
import mcover.coverage.munit.client.MCoverSummaryReportClient;

import massive.munit.TestRunner;

class TestAll
{
	static function main(){	
		new TestAll();	
	}

	public function new()
	{
		var suites = new Array<Class<massive.munit.TestSuite>>();
		suites.push(DataTestSuit);
		
		#if MCOVER
			var client = new MCoverPrintClient();
			var httpClient = new HTTPClient(new MCoverSummaryReportClient());
		#else
			var client = new RichPrintClient();
			var httpClient = new HTTPClient(new SummaryReportClient());
		#end

		var runner:TestRunner = new TestRunner(client); 
		runner.addResultClient(httpClient);

		runner.completionHandler = completionHandler;
		runner.run(suites);
	}
	
	/*
		updates the background color and closes the current browser
		for flash and html targets (useful for continous integration servers)
	*/
	private function completionHandler(successful:Bool):Void
	{
		try
		{
			#if flash
				flash.external.ExternalInterface.call("testResult", successful);
			#elseif js
				js.Lib.eval("testResult(" + successful + ");");
			#elseif sys
				Sys.exit(0);
			#end
		}
		// if run from outside browser can get error which we can ignore
		catch (e:Dynamic)
		{
		}
	}
}