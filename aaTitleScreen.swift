import SwiftUI

struct aaTitleScreen: View {
    var body: some View {
        VStack {
            Group{
                Text("Google Dino Game Renovated")
                    .font(.custom("Zapfino", size: 15))
                Text("Version - 0.01")
            }
            .font(.system(size: 25))
            
            Spacer()
            Button(action: {
                print("I wanted the button to do something")
            }, label: {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(maxWidth: 400, maxHeight: 100)
                    .foregroundStyle(.black)
                    .overlay(
                Text("Start Game")
                    .foregroundStyle(.white
                                    )
                )
            })
            Spacer()
            
            
        }
    }
}
