package jsonanimatlas;

#if sys
import sys.io.File;
import sys.FileSystem;
#end
import haxe.Json;

class Version
{
    static var repo:String = "https://raw.githubusercontent.com/mrniz/JsonAnimAtlas/main/haxelib.json";
    static var ver:String;
    static var palVer:String;
    public static function get():String
    {
        update();
        return  ver;
    }
    public static function getPal():String
    {
        get();
        return palVer;
    }
    static function update():Void
    {
        var http = new haxe.Http(repo);
        #if sys
        if (FileSystem.exists(Sys.getCwd() + "haxelib.json")) ver = Json.parse(File.getContent(Sys.getCwd() + "haxelib.json")).version;
        #end
        http.onData = function(data:String)
            palVer = '${Json.parse(data).version}';
        
        #if debug 
        http.onError = function(error)
            trace('error: $error');
        #end
        
        http.request();
    }
}