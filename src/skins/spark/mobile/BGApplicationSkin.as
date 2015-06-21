/**
 * Created with IntelliJ IDEA.
 * User: Kuba
 * Date: 21.06.15
 * Time: 09:15
 * To change this template use File | Settings | File Templates.
 */
package skins.spark.mobile {
import flash.display.DisplayObject;

import spark.skins.mobile.ViewNavigatorApplicationSkin;

public class BGApplicationSkin extends spark.skins.mobile.ViewNavigatorApplicationSkin {
    protected var _background:DisplayObject;

    override protected function drawBackground(w:Number, h:Number):void
    {
        //var bgClass:Class       = this.getStyle('backgroundImage') as Class;
        //var bgClass:Class       = this.getStyle('backgroundImage') as Class;
        var bgColor:uint        = this.getStyle('backgroundColor') as uint;


        this.graphics.beginFill(bgColor, 1);
        this.graphics.drawRect(0, 0, w, h);
        this.graphics.endFill();

        //if (bgClass) {
            //this._background        = new bgClass() as DisplayObject;
            this._background        = new Skin_background();

            this._background.width  = w;
            this._background.height = h;

            //Add the background at the lowest display hierarchy.
            this.addChildAt(this._background, 0);
        //}

    }
}
}
