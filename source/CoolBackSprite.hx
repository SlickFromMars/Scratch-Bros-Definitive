package;

import flixel.FlxG;
import flixel.FlxSprite;

class CoolBackSprite extends FlxSprite
{
    public function new() {
        this.loadGraphic(Path.getPath('bg', 'image'));
        this.setGraphicSize(Std.int(FlxG.width));
        this.screenCenter();
        this.scrollFactor.set(0, 0);

        super();
    }

    override function update(elapsed:Float) {
        super.update(elapsed);
    }
}