//
//  EnterView.swift
//  Mafia
//
//  Created by Alex on 23.09.2021.
//

import SwiftUI

struct EnterUserDataView: View {
    
    @State private var userName: String = ""
    @State private var roomNumber: String = ""
    @State private var isEnteredName = false
    var isCreator: Bool
    
    var body: some View {
        
        VStack(alignment: .center) {
            if isCreator || isEnteredName {
                
                Text("Введите имя")
                    .font(.largeTitle)
                
                TextField(
                    "Ваня",
                     text: $userName
                )
                    .disableAutocorrection(true)
                    .multilineTextAlignment(.center)
                    .padding()
                
                
                NavigationLink(destination: RoomView()) {
                    Text("ДАЛЕЕ")
                        .foregroundColor(.black)
                }
            } else {
                Text("Введите номер комнаты")
                    .font(.largeTitle)
                
                TextField(
                    "123456",
                     text: $roomNumber
                )
                .disableAutocorrection(true)
                .multilineTextAlignment(.center)
                .padding()
                
                Button("ДАЛЕЕ") {
                    isEnteredName.toggle()
                }
                
            }
        }
        .padding()
            
    }
}

struct EnterView_Previews: PreviewProvider {
    static var previews: some View {
        EnterUserDataView(isCreator: false)
    }
}
