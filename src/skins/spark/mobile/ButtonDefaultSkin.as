/**
 * Created with IntelliJ IDEA.
 * User: Kuba
 * Date: 24.03.14
 * Time: 14:11
 * To change this template use File | Settings | File Templates.
 */
package skins.spark.mobile {
import skins.SkinAssets;
import skins.spark.mobile.MobileButtonSkin;

public class ButtonDefaultSkin extends MobileButtonSkin {

    public function ButtonDefaultSkin() {
        super();

        upBorderSkin = SkinAssets.Button_upSkin;
        downBorderSkin = SkinAssets.Button_downSkin;
        //overBorderSkin = SkinAssets.Button_overSkin;

        layoutPaddingLeft = 15;
        layoutPaddingRight = 15;
        layoutPaddingTop = 15;
        layoutPaddingBottom = 15;
        layoutGap = 15;
        measuredDefaultWidth = 100;
        measuredDefaultHeight = 60;
    }
}
}
