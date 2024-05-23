import SwiftUI

@main
struct aaMyApp: App {
    
    
    
    @StateObject var money = MoneyClass()
    var body: some Scene {
        WindowGroup {
            aaTitleScreen(money: money)
            
            
        }
    }
}

