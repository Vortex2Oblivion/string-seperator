package;

import haxe.Json;
import sys.io.File;

/**
 * @see https://www.geeksforgeeks.org/python-insert-character-after-every-character-pair/
 */
class Main {
    static function main() {
        var json:Dynamic = Json.parse(File.getContent("config.json"));
        var res:String = '';
        for (i in 0...Std.int(json.string.length / 2)) {
            res += json.string.substr(i * json.charactersPer, json.charactersPer);
            if (i < Std.int(json.string.length / 2) - 1) res += json.seperator;
        }
        trace(res);
        File.saveContent('./output.txt', res);
    }
}