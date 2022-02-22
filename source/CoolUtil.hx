package;

#if sys
import sys.io.File;
import sys.FileSystem;
#end
import openfl.utils.Assets;
import lime.utils.Assets as LimeAssets;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;

class CoolUtil
{
    inline public static function getText(path:String):String {
        #if sys
        return File.getContent(path);
        #else
        return Assets.getText(path);
        #end
    }

    public static function precacheSound(file:Dynamic):Void {
		if (Assets.exists(file, SOUND) || Assets.exists(file, MUSIC))
			Assets.getSound(file, true);
	}
}