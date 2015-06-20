/**
 * Created with IntelliJ IDEA.
 * User: Adam
 * Date: 20.06.15
 * Time: 23:48
 * To change this template use File | Settings | File Templates.
 */
package pl.needapp.chcetu.data {
import mx.collections.ArrayCollection;

public class DB {
    [Bindable]
    public var dbWpisy:ArrayCollection = new ArrayCollection([
        {label:"Przydałaby się droga rowerowa", date:"2015-01-01 23:11", yes:"23", no:"33", description:"Ulica Obornicka jest niebezpieczna dla rowerzystów i przydałaby się tam droga rowerowa", image:"obornicka.png", category:"droga_rowerowa", user:"Adam", comments:[{text:"Też tak uważam", user:"Magda"}]},

        {label:"Przydałaby się droga rowerowa", date:"2015-01-01", yes:"23", no:"33", description:"Ulica Obornicka jest niebezpieczna dla rowerzystów i przydałaby się tam droga rowerowa", image:"obornicka.png", category:"droga_rowerowa", user:"Adam"}
        ]);
    [Bindable]
    public var dbUsers:ArrayCollection = new ArrayCollection([
        {label:"Adam", rank:"10"}
    ]);
    public function DB() {


    }
}
}
