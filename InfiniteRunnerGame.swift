    //
    //  InfiniteRunnerGame.swift
    //  GDR
    //
    //  Created by Evan Gross on 4/19/24.
    //  Built by John Sencion 5/1/24.
    //

import SwiftUI
import SpriteKit

struct InfiniteRunnerGame: View {
    var body: some View {
        GeometryReader(content: { geometry in
            SpriteView(scene: GameScene(size: geometry.size))
        })
        .onAppear(perform: {
            binaryPos().understant( binaryPos().decode(binaryPos().encode(false, false, false, true)))
        })

    }//
}

#Preview {
    InfiniteRunnerGame()
}


class GameScene: SKScene{
    let floorO:CGFloat = 32
    let bsw:CGFloat = 25//base size width
    let ewr:CGFloat = 1.3//width random
    let bsh:CGFloat = 40//base size height
    let ehr:CGFloat = 1.23//height random
    let enem:[SKSpriteNode] = [
        SKSpriteNode(color: .red, size: CGSize(width: 0, height: 0))
    ]
    func rando(base:CGFloat, ofs:CGFloat,_ oop:Bool?)->CGFloat{
        if oop == Optional(nil){
            return base + (CGFloat.random(in: -1...1) * ofs * base * -1 + base)
        }
        //print(oop!)
        return base + ((oop! ? 1 : -1) * ofs * base * -1 + base)
    }
    let phb = SKSpriteNode(color: .red, size: CGSize(width: 0, height: 0))
var flip = SKSpriteNode(color: .blue, size: CGSize(width: 20, height: 20))//floor
    @State var st:CGFloat = 0

    let hightM:CGFloat = 270
    let jumps:CGFloat = 26
    let fall:CGFloat = 13

    var sz:[String:CGFloat] = ["width":64,"height":128]

    var pspd : CGFloat = 200
    @State var momentum = CGFloat(0)
        //    let sprite = SKSpriteNode(imageNamed: "foo")
    var fax:SKShapeNode = SKShapeNode(rect: CGRect(x: 0, y: 0, width: 0, height: 0))
    let foo = SKSpriteNode(imageNamed: "Rock")
    let foo2 = SKSpriteNode(imageNamed: "Dummy1")
    let ahh = SKSpriteNode(imageNamed: "ahh")
    let data = SKSpriteNode(color: .red, size: CGSize(width: 20, height: 20))
    override func sceneDidLoad() {
        self.phb.color = .red
        //phb.
        phb.size = CGSize(width: bsw * ewr, height: bsh * ehr)
        self.backgroundColor = .white
        self.flip.color = .blue
        self.addChild(flip)
        self.flip.position = CGPoint(x: size.width / 2, y: self.floorO / 2)
        self.flip.size = CGSize(width: size.width, height: self.floorO)
        //flip.fillColor = .blue
            //self.fax floorO

        self.addChild(foo)
        self.addChild(data)
        self.addChild(foo2)
        self.addChild(enem[0])

        foo.size = CGSize(width: sz["width"]!, height: sz["height"]!) //64/48 //CGPath(rect: CGRect(x: 0, y: 0, width:foo.size.width, height:foo.size.height),transform:) //= CGSize()
        foo2.size = foo.size

    }
    override func didMove(to view: SKView) {
        foo.position = CGPoint(x: size.width / 2, y: floorO + (foo.size.height / 2))
            //sprite.color = .white
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        if data.position.y == 0 {
            data.position.y = 1
        } else if data.position.y == 2 {
            data.position.y = 4
        }

            //guard let touch = touches.first else {return}
            //let location = touch.location(in: self)
            //foo.position.y = 360
            //data.position.y
            //self.$start.wrappedValue = true
            //self.start = true
            //self.st = location.x
            ///*foo.position.x*/self.momentum += (location.x) - (size.width / 2) * self.pspd
            //print("\(self.momentum + ((size.width / 2 - location.x) * self.pspd))")

    }
    override func touchesEnded (_ touches: Set<UITouch>, with event: UIEvent?) {
        if data.position.y == 1 || data.position.y == 3 || data.position.y == 4 {
            data.position.y = 2
        }
            //self.data.position.y = 2
            //touchesBegan(touches, with: event)
        guard let touch = touches.first else {return}
        let location = touch.location(in: self)
            //foo.position.y = 160
            //foo.position.x = (location.x > size.width - (foo.size.width / 2) ? size.width - (foo.size.width / 2) : location.x < 0 + (foo.size.width / 2) ? (foo.size.width / 2) : location.x)//(self.st)
            //print(foo.position.x)
    }
    override func update(_ currentTime: TimeInterval) {//

            //        let hightM:CGFloat = 360
            //        let jumps:CGFloat = 36
            //        let fall:CGFloat = 13
            //0:grounded;1:initJump;2:falling(Ntouch);3:initJumpHeld;4:fallinf(Ytouch)

            //jumping:1,3
            //falling:2,4
            //grounded:0

            //grounded falling jumping
        let state:Int = Int(data.position.y == 0 ? 0 :(data.position.y == 2 || data.position.y == 4 ? 1 : (data.position.y == 1 || data.position.y == 3 ? 2 : 3)))
        //print(state)
        if state == 1 {
            foo.position.y -= fall
            if foo.position.y < (foo.size.height / 2 + floorO) {
                foo.position.y = (foo.size.height / 2 + floorO)
                data.position.y = 0
            }
        } else if state == 2 {
            foo.position.y += jumps
            if foo.position.y > (foo.size.height / 2 + hightM) {
                foo.position.y = (foo.size.height / 2 + hightM + floorO)
                data.position.y += 1
            }
        }

        if data.position.y == 1{
            data.position.y = 3
        } else if data.position.y == 4 || data.position.y == 2 {
                // foo.position.y += 10
        }

            //print(data.position.y)

            //        if Int(data.position.y) == 0 {
            //            foo.position.y += CGFloat(floor(Double(Int(data.position.y)) * Double(foo.position.y)))
            //
            //        } else if Int(data.position.y)  == 1 {
            //
            //                data.position.y = foo.position.y > 360 ? 3 : 1
            //            if foo.position.y > 360 {
            //                print("help")
            //            }
            //            if Int(data.position.y)  == 1 {
            //                foo.position.y += 10
            //            }
            //            }
            //        if data.position.y == 2{
            //            print("\(data.position.y)")
            //        }
            //print("data:\(data.position.y)")

            //print(up)

            //-(yy-1)
        foo2.position = Int(currentTime * 10 / 5 * 4) % 2 == 0 ? foo.position : CGPoint(x: -1.0, y: -1.0)//this is the same line as above
        var oop = false
        var i = 0
        while i < enem.count{
            if enem[i].position.x < 0{
                enem[0].position = CGPoint(x: size.width, y: floorO)
                enem[0].size = CGSize(width: rando(base: bsw, ofs: ewr, oop), height: rando(base: bsh, ofs: ehr, oop))
                oop.toggle()
            }
            enem[0].position.x -= 10
            i += 1
        }
                                                                                                         //(self.st)
    }
}

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
    }
    func understant(_ data:[Bool]){
        //print("\()\()\()\()")
        //print()
        //print()
    }
}
