/**
 * Created by Bartek on 2015-06-21.
 */
package pl.needapp.chcetu.data {
import flash.events.EventDispatcher;

[Bindable]
public class DBWpis extends EventDispatcher {

    public var label:String;
    public var date:String;
    public var yes:String;
    public var no:String;
    public var description:String;
    public var image:String;
    public var category:String;
    public var user:String;
    public var comments:Array;
    public var address:String;

    public function DBWpis(label:String, date:String, yes:String, no:String, description:String, image:String, category:String, user:String, comments:Array, address:String) : void {
        this.label = label;
        this.date = date;
        this.yes = yes;
        this.no = no;
        this.description = description;
        this.image = image;
        this.category = category;
        this.user = user;
        this.comments = comments;
        this.address = address;
    }
}
}
