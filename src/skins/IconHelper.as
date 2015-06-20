/**
 * Created with IntelliJ IDEA.
 * User: Kuba
 * Date: 20.06.15
 * Time: 23:28
 * To change this template use File | Settings | File Templates.
 */
package skins {
import caurina.transitions.Tweener;

import flash.display.BitmapData;

import flash.display.DisplayObject;
import flash.display.Sprite;

[Bindable]
public class IconHelper {
    public static function render(source:Class, width:int = -1, height:int = -1, color:uint = 0, asBitmap:Boolean = false):* {
        var c:Sprite = new source as Sprite;

        if (width != -1) {
            c.width = width;
        }
        if (height != -1) {
            c.height = height;
        }

        if (color) {
            var colorLayer : DisplayObject = c.getChildByName("c");
            if (colorLayer) {
                Tweener.addTween(colorLayer, {_color: color, time: 0});
            }
            else {
                Tweener.addTween(c, {_color: color, time: 0});
            }
        }
        var s:Sprite = new Sprite();
        s.addChild(c);

        if (asBitmap) {
            var b:BitmapData = new BitmapData(c.width, c.height, true, 0x000000);
            b.draw(s);
            return b;
        }

        return s;
    }

    public static function renderDefault(s : *) : *
    {
        return render(s, SkinConfig.ICON_SIZE, SkinConfig.ICON_SIZE, SkinConfig.MENU_ICON_COLOR);
    }
}
}
