//
//  SettingsPage.swift
//  GDR
//
//  Created by Evan Gross on 4/19/24.
//

import SwiftUI

struct SettingsPage: View {
    @ObservedObject var money: MoneyClass
    @State var tempName = ""
    @State var endis = false
    @State var endis2:nameCheck = nameCheck(firstName: "2", lastName: "")
    var body: some View {
        HStack{
            MenuSelectionSubview(money: money)
            Spacer()
            VStack{
                Text("Settings")
                    .onLongPressGesture(minimumDuration: 5.0, maximumDistance: 100) {
                        tempName = "foo"
                        endis = nameCheck(firstName: money.userName, lastName: tempName).accepted
                        endis2 = nameCheck(firstName: money.userName, lastName: tempName)
                    } onPressingChanged: { chnge in
                        if  chnge {
                            tempName = "Rock"
                            endis = nameCheck(firstName: money.userName, lastName: tempName).accepted
                            endis2 = nameCheck(firstName: money.userName, lastName: tempName)
                        }
                    }
                Text("Username:\n\(money.userName)")
                    .multilineTextAlignment(.center)
                Text("\(endis2.outText)")
                    .font(.caption)
                    .foregroundStyle(endis2.accepted ? .gray : .red)
                TextField(money.userName, text: $tempName)
                    .multilineTextAlignment(.center)
                    .onSubmit({
                        endis2 = nameCheck(firstName: money.userName, lastName: tempName)
                        endis = nameCheck(firstName: money.userName, lastName: tempName).accepted
                    })
                    .onChange(of: tempName) { oldValue, newValue in
                        endis2 = nameCheck(firstName: money.userName, lastName: tempName)
                    }
                    .foregroundStyle(endis2.outType == 2 ? .gray : .black)


                Button("Submit Username") {
                    if endis {
                        money.userName = tempName
                        endis = nameCheck(firstName: money.userName, lastName: tempName).accepted
                        endis2 = nameCheck(firstName: money.userName, lastName: tempName)
                    }
                }
                .frame(width: 150, height: 50)
                .background(endis ? Color.blue : Color.gray)
                .foregroundStyle(.white)
                .clipShape(Capsule())

            }



        }
    }
}

class nameCheck {
    var accepted:Bool
    var outType:Int
    var outText:String

    init (firstName:String/*old Name*/, lastName:String/*new Name*/){

        accepted = true
        outType = 0
        outText = "Username accepted"

        if firstName == lastName {
            accepted = false
            outType = 1
            outText = "Please select a DIFFERENT username"
        }else if lastName == ""{
            accepted = false
            outType = 2
            outText = "Please enter A username"
        }else if Array(lastName).count < 3 {
            accepted = false
            outType = 2
            outText = "Please enter a longer username"
        }else if (firstName.capitalizingFirstLetter() == "John" && lastName.capitalizingFirstLetter() == "Sencion") || (firstName.capitalizingFirstLetter() == "Evan" && lastName.capitalizingFirstLetter() == "Gross") {
            accepted = false
            outType = 3
            outText = "Be original"
        }

    }
}

extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).uppercased() + self.lowercased().dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
