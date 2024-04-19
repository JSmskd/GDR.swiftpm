//
//  phys.swift
//  GDR
//
//  Created by John Sencion on 4/19/24.
//

import SwiftUI

struct phys: View {
    var body: some View {
        Rectangle()
            .frame(width: 88, height: 128)
        Button {
            let x = 0
        } label: {
            Text("hi")
        }
        .onTapGesture {
            print("hi")
        }

    }
}

#Preview {
    phys()
}
