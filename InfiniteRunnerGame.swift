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
    @ObservedObject var money : MoneyClass
    @State var start = false
@Environment(\.dismiss) var dismiss
    var body: some View {

        if start{
            GeometryReader(content: { geometry in
                SpriteView(scene: GameScene(size: geometry.size,money:$money))
            })
        }
        Rectangle()
            .frame(width: 0,height: 0)
            .onAppear(perform: {
                money.ded = false
                Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { _ in
                    start = true
                    Timer.scheduledTimer(withTimeInterval: 1.0  / 60.0, repeats: true) { _ in
                            //print(money.wrappedValue.gold)
                        if money.ded{
                            dismiss()
                        }
                    }
                }
            })



    }//
}


class GameScene: SKScene{

        //var money : Binding<MoneyClass>
        //var size: CGSize

    let floorO:CGFloat = 32
    let bsw:Float = 40//base size width
    let ewr:Float = 20.3//width random
    let bsh:Float = 100//base size height
    let ehr:Float = 10.23//height random
    let enem:[SKSpriteNode] = [
        //SKSpriteNode(color: .red, size: CGSize(width: 0, height: 0))
        SKSpriteNode(imageNamed: "cact\(Int.random(in: 1...3))")
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

    var hightM:CGFloat //height max
    var jumps:CGFloat // jump speed
    var fall:CGFloat //fall speed

    var sz:[String:CGFloat] = ["width":64,"height":128]

    var pspd : CGFloat = 200
    @State var momentum = CGFloat(0)
        //    let sprite = SKSpriteNode(imageNamed: "foo")
    var fax:SKShapeNode = SKShapeNode(rect: CGRect(x: 0, y: 0, width: 0, height: 0))
    let foo = SKSpriteNode(imageNamed: "Dummy1")
    let foo2 = SKSpriteNode(imageNamed: "Dummy2")
    let ahh = SKSpriteNode(imageNamed: "ahh")
    let data = SKSpriteNode(color: .red, size: CGSize(width: 20, height: 20))
    var money:ObservedObject<MoneyClass>.Wrapper
    let HM:CGFloat = 37
    init(size:CGSize, money:ObservedObject<MoneyClass>.Wrapper){
            //self.size = size
            // call to superclass init

        self.money = money
        self.hightM = money.jumpHeight.wrappedValue * self.HM
        self.jumps = self.hightM / 10.3
        self.fall = CGFloat(self.jumps / 3)
        super.init(size: size)

            // setup basic scene properties
            // acceleration due to gravity that you want in your game
            //self.physicsWorld.gravity = CGVectorMake(0, -9.8)
            // set contact delegate so that this class will be notified of SKNode contacts
            //self.physicsWorld.contactDelegate = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func sceneDidLoad() {
        self.phb.color = .red
        //phb.
        phb.size = ezpz(bsw, ewr, bsh, ehr)
        self.backgroundColor = .white
        self.flip.color = .blue
        self.addChild(flip)
        self.flip.position = CGPoint(x: size.width / 2, y: self.floorO / 2)
        self.flip.size = CGSize(width: size.width, height: self.floorO)
        //flip.fillColor = .blue
        //self.fax floorO
        //
        self.addChild(foo)
        self.addChild(data)
        self.addChild(foo2)
        if money.userName.wrappedValue.lowercased() == "foo" {
            foo.texture = SKTexture(imageNamed: "Dummy1")
            foo2.texture = SKTexture(imageNamed: "Dummy2")
        }else if money.userName.wrappedValue.lowercased() == "rock" {
            foo.texture = SKTexture(imageNamed: "Rock")
            foo2.texture = foo.texture
        }
        var x = 0
        while x < enem.count{
            enem[x].size = ezpz(bsw, ewr, bsh, ehr)
            enem[x].position.x = CGFloat(size.width * CGFloat(1.25 * Double(x + 1)))//
            enem[x].position.y = CGFloat(floorO + (enem[x].size.height / 2))
            self.addChild(enem[x])
            x += 1
        }
        foo.size = CGSize(width: sz["width"]!, height: sz["height"]!) //64/48 //CGPath(rect: CGRect(x: 0, y: 0, width:foo.size.width, height:foo.size.height),transform:) //= CGSize()
        foo2.size = foo.size

    }
    override func didMove(to view: SKView) {

        foo.position = CGPoint(x: size.width / 3 - (foo.size.height / 2), y: floorO + (foo.size.height / 2))
            //sprite.color = .white
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            //var coyotee = CGFloat(1000)
        if data.position.y == 0  {
            data.position.y = 1
        } else if foo.size.height / 2 + foo.position.y -                                     floorO < 100 + jumps /*floorO*/ {
            data.position.y = 1
            foo.position.y += 200 * jumps - (foo.size.height / 2 + foo.position.y )
        } else if data.position.y == 2 {
            data.position.y = 4
        }
        print((foo.size.height / 2 + foo.position.y - floorO) < (100 + jumps))

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
            foo.position.y -= fall * CGFloat(Int(data.position.y) == 2 ? 1 : 0.5)
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
        foo2.position = Int(currentTime * 10 / 5 * 4) % 2 == 0 ? foo.position : CGPoint(x: -100.0, y: -100.0)//this is the same line as above
        var oop = false

        var i = 0
        var pint = (enem[i].size.width * 1.75)
        while i < enem.count{
            pint = (enem[i].size.width * 1.75)

            if (foo.position.y - (foo.size.height / CGFloat(2)) < enem[i].position.y + (enem[i].size.height / CGFloat(2))) && enem[i].position.x < foo.position.x + foo.size.width && enem[i].position.x > foo.position.x {
                money.ded.wrappedValue  =  true
                //print("xy")
            }
            
            if enem[i].position.x < 0 - pint{
                enem[i].size = ezpz(bsw, ewr, bsh, ehr)
                enem[i].position = CGPoint(x: (size.width + (pint / 1.75)) * CGFloat(enem.count * 1) + CGFloat.random(in: -10...20), y: floorO + (enem[i].size.height / 2))
                enem[i].texture = SKTexture(imageNamed: "cact\(Int.random(in: 1...3))")
                
                oop.toggle()
                money.achievments["Cactus Jumped Over"].wrappedValue! += 1
                money.cactiJumped.wrappedValue += 1
                money.goldGained.wrappedValue += money.goldMultiplier.wrappedValue * 5
                
                money.gold.wrappedValue += money.goldMultiplier.wrappedValue

                
            }
            
            //////////////
            
            enem[i].position.x -= 10
            i += 1
        }
        //if jumped over  cacti
        money.gold.wrappedValue  += 10
        //print(money.wrappedValue.gold)
        if money.ded.wrappedValue{
                //self.addChild(SKSpriteNode(color: .black, size: CGSize(width: 1000.0, height: 1000.0)))

        }
        //print("hi")                                                                                    //(self.st)
    }
}
