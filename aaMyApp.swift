import SwiftUI

@main
struct aaMyApp: App {
    
    
    
    @State var money = MoneyClass()
    var body: some Scene {
        WindowGroup {
            aaTitleScreen(money: $money)
            
            
        }
    }
}

