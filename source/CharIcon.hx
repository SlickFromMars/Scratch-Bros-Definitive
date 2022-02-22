package;

import lime.utils.Assets;
import flixel.FlxSprite;

class CharIcon extends FlxSprite
{
    public function new(index:Int) {
        var char = EngineData.characterList[index];
        if(Assets.exists(Path.getPath(char, 'image')) == false) {
            char = '_';
        }

        this.loadGraphic(Path.getPath(char, 'image'));
        this.offset.set(0, this.height - 45);

        this.setGraphicSize(Std.int(this.width * 2), Std.int(this.height * 1.8));
        this.offset.scale(1.8); //sucky, but it works

        super();
    }
}