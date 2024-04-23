//
//  InfiniteRunnerGame.swift
//  GDR
//
//  Created by Evan Gross on 4/19/24.
//

import SwiftUI
import SpriteKit

struct InfiniteRunnerGame: View {
    var body: some View {
        GeometryReader(content: { geometry in
            SpriteView(scene: GameScene(size: geometry.size))
        })

    }
}

#Preview {
    InfiniteRunnerGame()
}


class GameScene: SKScene{
    @State public var ht = 0
    let htm = 2
    @State public var rt = 0
    @State public var down = true
    @State public var up:Int = 0
    @State var st:CGFloat = 0
    var speedUse:CGFloat = 0.2
    var friction: CGFloat = 0.05
    var falt: Double = 0.0
    var pspd : CGFloat = 200
    @State var start = true
    @State var right = false
    @State var momentum = CGFloat(0)
        //    let sprite = SKSpriteNode(imageNamed: "foo")
    let foo = SKSpriteNode(imageNamed: "foo")
    let foo2 = SKSpriteNode(imageNamed: "foo2")
    let ahh = SKSpriteNode(imageNamed: "ahh")
    override func sceneDidLoad() {
        self.backgroundColor = .systemCyan

    }
    override func didMove(to view: SKView) {
        foo.position = CGPoint(x: size.width / 2, y: 32)
            //sprite.color = .white
        foo.size = CGSize(width: 64, height: 64) //64/48
        foo2.size = CGSize(width: 64, height: 64) //64/48
        self.addChild(foo)
        self.addChild(foo2)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.up = 1
        print("\(up)")
        guard let touch = touches.first else {return}
        let location = touch.location(in: self)
        foo.position.y = 360
        self.down = false
            //self.$start.wrappedValue = true
            //self.start = true
            //self.st = location.x
            ///*foo.position.x*/self.momentum += (location.x) - (size.width / 2) * self.pspd
            //print("\(self.momentum + ((size.width / 2 - location.x) * self.pspd))")

    }
    override func touchesEnded (_ touches: Set<UITouch>, with event: UIEvent?) {
        up = -1
            //touchesBegan(touches, with: event)
        guard let touch = touches.first else {return}
        let location = touch.location(in: self)
        self.down = true
            //foo.position.y = 160
            //foo.position.x = (location.x > size.width - (foo.size.width / 2) ? size.width - (foo.size.width / 2) : location.x < 0 + (foo.size.width / 2) ? (foo.size.width / 2) : location.x)//(self.st)
        print(foo.position.x)
    }
    override func update(_ currentTime: TimeInterval) {
        if up > 0 {
            up = Int(floor(Double(up) * 1.2))
            foo.position.y += CGFloat(floor(Double(up) * Double(foo.position.y)))
        }
            //print(up)

            //-(yy-1)
        ht += 1 // htm
        foo2.position = Int(currentTime * 10 / 5 * 4) % 2 == 0 ? foo.position : CGPoint(x: -1.0, y: -1.0)//
        foo.position.y -= 5 * (self.down ? 1.5 : 0)
        foo.position.y = (foo.position.y > size.width - (foo.size.width / 2) ? size.width - (foo.size.width / 2) : foo.position.y < 0 + (foo.size.width / 2) ? (foo.size.width / 2) : foo.position.y)//(self.st)
    }
}
