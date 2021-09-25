//
//  EnterRoomView.swift
//  Mafia
//
//  Created by Alex on 25.09.2021.
//

import SwiftUI

struct EnterRoomView: View {
    
    @State private var room: String = ""
    
    var body: some View {
        VStack {
            Text("Введите номер комнаты")
                .font(.largeTitle)
            
            TextField(
                "123456",
                 text: $room
            )
            .disableAutocorrection(true)
            .multilineTextAlignment(.center)
            .padding()
            
            NavigationLink(destination: RoomView()) {
                Text("ВПЕРЕД")
                    .foregroundColor(.black)
            }
        }
        .textFieldStyle(.roundedBorder)
    }
}

struct EnterRoomView_Previews: PreviewProvider {
    static var previews: some View {
        EnterRoomView()
    }
}
