package jsonanimatlas;

import haxe.Json;

enum Types
{
    AdobeAnimateTextureAtlas;
    /**
        * ex:
        * ```json
        {
            "anims": [
               { 
                "name":"",
                "width": 0,
                "height": 0,
                "pos": [0,0],
                "frameWidth": 0,
                "frameHeight": 0,
                "pivot": [0,0]
               }
            ]
        }
       * is optional any of it.
       * ```
    **/
    NizJson(v:String);
    /**
        based on nizJson logic
    **/
    SimpleEngineJson(v:String);
    Unbinded;
}
class _ParserType {
    static function _get(_d:Json):Types {
         var type:Types =NizJson(Reflect.getProperty(_d,"formatV"));
         if (type == null)
            {
            if (Reflect.getProperty(_d,"meta") != null)
                type = AdobeAnimateTextureAtlas;
            else if (Reflect.getProperty(_d,"_fv") != null) 
                type = SimpleEngineJson(Reflect.getProperty(_d,"_fv"));
            }

        return type;
    }
}