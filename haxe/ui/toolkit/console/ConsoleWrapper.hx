package haxe.ui.toolkit.console;

#if !doc

import openfl.Lib;
import pgr.dconsole.DC;
import pgr.dconsole.DConsole;

class ConsoleWrapper {
	public function new() {
		
	}
	
	public var height(get, set):Float;
	public function get_height():Float {
		return Reflect.field(DC.instance.interfc, "_height");
	}
	
	public function set_height(value:Float):Float {
		if (value > 1) value = 1;
		if (value < 0.1) value = 0.1;
		var newHeight:Float = Std.int(Lib.current.stage.stageHeight * value);
		
		Reflect.setField(DC.instance.interfc, "_height", newHeight);
		//Reflect.callMethod(DConsole.instance.interfc, "drawConsole", []);
		return value;
	}
}

#end