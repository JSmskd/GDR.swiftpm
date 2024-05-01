import SwiftUI

struct aaTitleScreen: View {
    @Binding var money: MoneyClass
    
    var body: some View {
        NavigationStack{
        VStack {
            Group{
                Text("Google Dino Game Renovated")
                    .font(.custom("Zapfino", size: 15))
                Text("Version - 0.02")
            }
            .font(.system(size: 25))
            
            Spacer()
            
                        VStack{
                            RoundedRectangle(cornerRadius: 25.0)
                                .frame(maxWidth: 400, maxHeight: 100)
                                .foregroundStyle(.black)
                                .overlay(
                            NavigationLink("Start Game"){
                                StatsPage(money: $money)
                                    .navigationBarBackButtonHidden(true)
                            }
                                .foregroundStyle(.white)
                              
                                )
                                                
                        }
            Spacer()
                    }
        
            
   
            
            
            
        }
        
        
    }
}
