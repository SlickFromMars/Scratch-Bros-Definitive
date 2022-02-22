package;

#if sys
import sys.FileSystem;
#end

#if MODS_ALLOWED
import polymod.Polymod.Framework;
import polymod.Polymod.PolymodError;
#end

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
		#if MODS_ALLOWED
		var modList = FileSystem.readDirectory('mods');
		var newList:Array<String> = [];

		for(file in modList) {
			if(FileSystem.isDirectory('mods/$file')) {
				newList.push(file);
			}
		}
		trace(newList);

		var errors = (error:PolymodError) ->
		{
			trace(error.severity + ": " + error.code + " - " + error.message + " - ORIGIN: " + error.origin);
		};

		var modMetadata = polymod.Polymod.init({
			modRoot: "mods/",
			dirs: newList,
			errorCallback: errors,
			framework: OPENFL,
			ignoredFiles: polymod.Polymod.getDefaultIgnoreList(),
			frameworkParams: {
				assetLibraryPaths: [
					"data" => "data", "images" => "images", "music" => "music",
					"sounds" => "sounds", "dynamic" => "dynamic", "fonts" => "fonts"
				]
			}
		});

		for(i in modMetadata) {
			trace('Mod ' + i.title + ' was loaded! Version: ' + i.modVersion);
		}
		#end

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
