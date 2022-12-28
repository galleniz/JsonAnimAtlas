// test file
package;

import haxe.Json;
import jsonanimatlas.Interp;

class Test
{
    static function main() {
        var mySwagJson = Json.parse('
        {
            "anims": [
               { 
                "name":"TengoCancer",
                "width": 0,
                "height": 0,
                "x":0,
                "y":0
             
               }
            ],
            "formatV": "1"

        }');
        trace(Interp.convertToXML(mySwagJson));
        return;

    }
}