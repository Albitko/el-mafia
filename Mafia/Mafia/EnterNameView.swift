//
//  EnterView.swift
//  Mafia
//
//  Created by Alex on 23.09.2021.
//

import SwiftUI

struct EnterNameView: View {
    
    @State private var username: String = ""
    var isCreator: Bool
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Введите имя")
                .font(.largeTitle)
            
            TextField(
                "Ваня",
                 text: $username
            )
                .disableAutocorrection(true)
                .multilineTextAlignment(.center)
                .padding()
            
            if isCreator {
                NavigationLink(destination: RoomView()) {
                    Text("ЭТО Я")
                        .foregroundColor(.black)
                }
            } else {
                NavigationLink(destination: EnterRoomView()) {
                    Text("ЭТО Я")
                        .foregroundColor(.black)
                }
            }
            
        }.padding()
    }
}

struct EnterView_Previews: PreviewProvider {
    static var previews: some View {
        EnterNameView(isCreator: false)
    }
}
