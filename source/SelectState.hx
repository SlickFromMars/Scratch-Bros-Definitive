package;

import flixel.FlxCamera;
import flixel.util.FlxColor;
import flixel.FlxG;
import flixel.system.FlxSound;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.FlxState;
import flixel.FlxSprite;

import CharIcon;

class SelectState extends FlxState
{
	public var icons:FlxTypedGroup<CharIcon>;

	var camUI:FlxCamera;

	override public function create()
	{
		EngineData.loadProgress();
		EngineData.loadCharList();

		camUI = new FlxCamera();
		FlxG.cameras.reset(camUI);

		FlxG.sound.playMusic(Path.getPath('menu', 'music'), 0.6, true);

		var bg = new CoolBackSprite();
		add(bg);

		var startY = 0;

		for(i in 0...4) {
			var startX = 0;
			startY += 100;

			for(l in 0...8) {

			}
		}
		
		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
