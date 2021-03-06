/**
 * Created with IntelliJ IDEA.
 * User: Adam
 * Date: 20.06.15
 * Time: 23:48
 * To change this template use File | Settings | File Templates.
 */
package pl.needapp.chcetu.data {
import flash.filesystem.File;

import mx.collections.ArrayCollection;

public class DB {
    [Bindable]
    public var dbWpisy:ArrayCollection = new ArrayCollection([

        new DBWpis("Przydałaby się droga rowerowa", "2015-01-01 23:11", "23", "33", "Ulica Obornicka jest niebezpieczna dla rowerzystów i przydałaby się tam droga rowerowa",
                "embed/images/zdjecie1.png", "droga_rowerowa", "Adam", [new DBComment("Też tak uważam", "Magda")], "Lechicka 43"),

        new DBWpis("Brak koszy w parku", "2015-01-01 23:11", "23", "33", "W parku Cytadela brakuje koszy na śmieci. ",
                "embed/images/zdjecie3.png", "czystosc", "Magda", [new DBComment("Też tak uważam", "Magda")], "Warszawska 22"),

        new DBWpis("Budżet Obywatelski: droga rowerowa", "2015-01-01 23:11", "23", "33", "Propozycja Stowarzyszenia Moja Sprawa - droga rowerowa na Ratajach",
                "embed/images/zdjecie1.png", "rowery", "Jan", [new DBComment("Też tak uważam", "Magda")], "Warszawska 22"),

        new DBWpis("Oznakowanie przejścia dla pieszych", "2015-01-01 23:11", "23", "33", "Potrzeba lepszego oznakowania przejścia dla pieszych.",
                "embed/images/zdjecie2.png", "czystosc", "City", [new DBComment("Też tak uważam", "Magda")], "Cytadela"),

    ]);

    [Bindable]
    public var dbUsers:ArrayCollection = new ArrayCollection([
        {label:"Adam", rank:"10"}
    ]);

    private static var _allowInstance:Boolean = false;

    private static var _instance:DB;

    public static function get instance():DB {
        if(!_instance) {
            _allowInstance = true;
            _instance = new DB();
            _allowInstance = false;
        }
        return _instance;
    }

    public function DB() {
        if(!_allowInstance) {
            throw new Error("Use DB.instance instead");
        }
    }
}
}
