package;

import flixel.FlxG;
import flixel.system.FlxSound;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.FlxState;

import CharIcon;

class SelectState extends FlxState
{
	public var characters:FlxTypedGroup<CharIcon>;

	override public function create()
	{
		FlxG.sound.playMusic(Path.getPath('menu', 'music'), 0.6, true);
		
		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
