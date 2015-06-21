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

public class ButtonOrangeSkin extends MobileButtonSkin {

    public function ButtonOrangeSkin() {
        super();

        upBorderSkin = SkinAssets.Button_orangeUpSkin;
        downBorderSkin = SkinAssets.Button_orangeDownSkin;
        //overBorderSkin = SkinAssets.Button_orangeOverSkin;

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
