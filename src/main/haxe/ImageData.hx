package;

import haxe.io.Bytes;
/**
 * @author gNikro
 */
typedef ImageData = {
	var width:Int;
	var height:Int;
	var data:Bytes;
	var alpha:Bool;
}