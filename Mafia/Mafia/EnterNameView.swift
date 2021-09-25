//
//  EnterView.swift
//  Mafia
//
//  Created by Alex on 23.09.2021.
//

import SwiftUI

struct EnterNameView: View {
    
    @State private var username: String = ""
    
    var body: some View {
        VStack {
            Text("Введите имя")
            
            TextField(
                "Ваня",
                 text: $username
            )
            
            NavigationLink(destination: EnterRoomView()) {
                Text("ЭТО Я")
            }
        }
    }
}

struct EnterView_Previews: PreviewProvider {
    static var previews: some View {
        EnterNameView()
    }
}
