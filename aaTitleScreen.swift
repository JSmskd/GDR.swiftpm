import SwiftUI

struct aaTitleScreen: View {
 @ObservedObject var money: MoneyClass
    
    var body: some View {
        NavigationStack{
        VStack {
            Group{
                Text("JURRASSIC RUN")
                    .font(.custom("Zapfino", size: 15))
                Text("Version - 0.023")
            }
            .font(.system(size: 25))
            
            Spacer()
            
                        VStack{
                            NavigationLink(destination: { 
                                StatsPage(money: money)
                                    .navigationBarBackButtonHidden(true)
                            }, label: { 
                                Text("Start Game")
                                    .frame(maxWidth: 400, maxHeight: 100)
                                    .background(.black)
                                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                                    .foregroundStyle(.white)
                            })
                                                
                        }
            Spacer()
                    }
        
            
   
            
            
            
        }
        
        
    }
}
