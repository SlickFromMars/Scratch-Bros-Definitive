package;

import openfl.utils.Assets;

class CoolUtil
{
    inline public static function getText(path:String):String {
        return Assets.getText(path);
    }
}