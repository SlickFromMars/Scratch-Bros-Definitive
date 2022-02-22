package;

import flixel.util.FlxSave;

using StringTools;

class EngineData
{
    public static var characterList = [
        'Folda',
        'Bright'
    ];

    public static var unlockedCharacters = ['Folda', 'Bright'];

    public static function loadProgress() {
        var save:FlxSave = new FlxSave();
        save.bind('chars', 'progress');

        if(save.data.unlocks != null) {
            unlockedCharacters = save.data.unlocks;
        }
    }

    public static function saveProgress() {
        var save:FlxSave = new FlxSave();
        save.bind('chars', 'progress');

        save.data.unlocks = unlockedCharacters;

        save.flush();
    }

    public static function loadCharList():Array<String> {
        var rawText:String = CoolUtil.getText('assets/data/characterList.txt').trim();
        var list:Array<String> = rawText.split('\n');

        characterList = list;

        return list;
    }
}