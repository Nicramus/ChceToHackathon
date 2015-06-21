/**
 * Created with IntelliJ IDEA.
 * User: Kuba
 * Date: 24.03.14
 * Time: 14:09
 * To change this template use File | Settings | File Templates.
 */
package skins.spark.mobile {
import flash.events.Event;

import mx.core.mx_internal;

import spark.components.supportClasses.ButtonBase;
import spark.skins.mobile.ButtonSkin;

public class MobileButtonSkin extends ButtonSkin {

    //TODO Zaimplementowac overState (tylko desktop)
    public var overBorderSkin:Class;

    public function MobileButtonSkin() {
        //nie odpalamy super... super();

        useSymbolColor = false;
        mx_internal::useMinimumHitArea = false;

        layoutGap = 5;
        layoutCornerEllipseSize = 10;
        layoutPaddingLeft = 10;
        layoutPaddingRight = 10;
        layoutPaddingTop = 10;
        layoutPaddingBottom = 10;
        layoutBorderSize = 1;
        measuredDefaultWidth = 32;
        measuredDefaultHeight = 43;
    }

    override public function set hostComponent(value:ButtonBase):void {
        super.hostComponent = value;
        value.addEventListener("toolTipChanged", _onToolTipChanged, false, 0, true);
    }

    private function _onToolTipChanged(event:Event):void {
        //JG: Poprawka Flexa - przy niektorych guzikach (jak mamy skórkę mobilną), jak same ustalaly swoj rozmiar, pokazywał sie tooltip w stylu 'M...'
        var s:String = hostComponent.toolTip;
        if (s && s.indexOf("...") > -1) {
            s = null;
        }
        hostComponent.removeEventListener("toolTipChanged", _onToolTipChanged);
        hostComponent.toolTip = s;
        hostComponent.addEventListener("toolTipChanged", _onToolTipChanged, false, 0, true);
    }

    override protected function drawBackground(unscaledWidth:Number, unscaledHeight:Number):void {
        //super.drawBackground(unscaledWidth, unscaledHeight);
    }
}
}
