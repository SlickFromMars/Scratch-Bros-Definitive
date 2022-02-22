package;

#if sys
import sys.ssl.Key;
#end
import flixel.FlxG;
import flixel.FlxGame;
import flixel.FlxState;
import openfl.display.FPS;
import flixel.ui.FlxButton;
import flixel.ui.FlxSpriteButton;
import openfl.display.Sprite;
import lime.utils.Assets;

class Main extends Sprite
{
	public static var fpsVar:FPS;

	var initState:Class<FlxState> = SelectState;

	public function new()
	{
		//Path.SOUND_EXT = #if web "mp3" #else "ogg" #end;
		//Settings.setDefault();

		super();
		
		setupGame();
	}

	function setupGame():Void {
		addChild(new FlxGame(0, 0, initState, 1, 60, 60));
		EngineData.getGameVersion();

		#if !mobile
		fpsVar = new FPS(10, 3, 0xFFFFFF);
		addChild(fpsVar);
		if(fpsVar != null) {
			fpsVar.visible = true;
		}
		#end
		
		#if html5
		FlxG.autoPause = false;
		FlxG.mouse.visible = false;
		#end
	}
}
