# IMPORTANT
This library is decraped because:
https://media.discordapp.net/attachments/830603085554515975/1057700441309323385/image.png

but if i will remastered this in some day, no for now.
# JsonAnimAtlas Lib
A library based of AdobeAnimate Atlas texture.

Using for some things (The next update todo is: better coder.);


## Install
`haxelib git jsonAnimAtlas https://github.com/MrNiz/JsonAnimAtlas`
or if i publish this in haxelib (and stables versions)
`haxelib install jsonAnimAtlas`

## Example Usage

- first obtain a Json with data
```json
{
    "ATLAS": 
    {
    "SPRITES":[ 
    {"SPRITE" : {"name": "0000","x":98,"y":93,"w":98,"h":137,"rotated": false}},
    {"SPRITE" : {"name": "0001","x":0,"y":93,"w":98,"h":155,"rotated": false}},
    {"SPRITE" : {"name": "0002","x":0,"y":0,"w":214,"h":93,"rotated": false}}
    ]},
    "meta": {
    "app": "Adobe Animate",
    "version": "22.0.4.185",
    "image": "spritemap1.png",
    "format": "RGBA8888",
    "size": {"w":214,"h":248},
    "resolution": "1"
    }
}
```
- Second parse it in haxe.
```haxe
myJson = haxe.Json.parse(sys.io.File.getContent("mychar/spriteatlas.json").trim());
var xml = jsonanimatlas.Interp.convertToXML(mySwagJson);
```
- For last step use in you Game!
```haxe
// Using Flixel example.

import flixel.FlxSprite;
import flixel.FlxState;

class MyState extends FlxState
{
    override function create():Void
    {
        super.create();
        var spr = new FlxSrite();
        var myJson = haxe.Json.parse(sys.io.File.getContent("Damian.json").trim());
        var xml = jsonanimatlas.Interp.convertToXML(mySwagJson);
        spr.frames = MyPaths.fromSparrow("Damian.png", xml);
        add(spr);
    }

}
```
