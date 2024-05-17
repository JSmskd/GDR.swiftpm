import SwiftUI
import SpriteKit

struct binaryPos {
    //◽◾
    func encode(_ grounded:Bool, _ rising:Bool, _ pressing:Bool,_ extraBit:Bool)->CGFloat  {
        return (grounded ? 1 : 0) + (rising ? 2 : 0) + (pressing ? 4 : 0) + (extraBit ? 8 : 0)
    }
    func decode(_ Val:CGFloat)->[Bool]{
        var    out:[Bool]=[]
        var x = 0
        var y = 8
        while x < 4{
            if Int(Val) >= y{
                out.append(true)
            }
            else {
                out.append(true)
            } 
            y /= 2
            x += 1
        }
        return [false]
    }
    func understant(_ data:[Bool]){
        //print("\()\()\()\()")
        //print()
        //print()
    }
}

func rs(_ min:Float, _ max:Float) -> CGFloat{
    //print("\(min)\(max)")
    //return .zero
    return CGFloat(Float.random(in: min...max))
}
func toSize(_ x:CGFloat,_ y:CGFloat)->CGSize{
    return CGSize(width: x, height: y)
}
func ezpz(_ minx:Float,_ maxx:Float,_ miny:Float,_ maxy:Float)->CGSize{
    toSize(rs(minx, minx + maxx), rs(miny, miny + maxy))
}
