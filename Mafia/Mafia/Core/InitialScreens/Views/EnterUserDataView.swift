//
//  EnterView.swift
//  Mafia
//
//  Created by Alex on 23.09.2021.
//

import SwiftUI

struct EnterUserDataView: View {
    
    @EnvironmentObject private var vm: InitialViewModel
    @State private var userName: String = ""
    @State private var roomNumber: String = ""
    @State private var isEnteredRoom = false
    @State private var isEnteredName = false
    var isCreator: Bool
    
    var body: some View {
        
        VStack(alignment: .center) {
            if isCreator || isEnteredRoom {
                
                Text("Введите имя")
                    .font(.largeTitle)
                
                TextField(
                    "Ваня",
                     text: $userName
                )
                    .disableAutocorrection(true)
                    .multilineTextAlignment(.center)
                    .padding()
                
                
                Button("ДАЛЕЕ") {
                    isEnteredName.toggle()
                    if isCreator {
                        vm.createNewRoom(creatorName: userName)
                    } else {
                        vm.connectToRoom(userName: userName, roomNumber: roomNumber)
                    }
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
                    isEnteredRoom.toggle()
                }
                
            }
        }
        .background(
            NavigationLink(
                destination: RoomView(),
                isActive: $isEnteredName,
                label: { EmptyView() })
            )
        .padding()
            
    }
}

struct EnterView_Previews: PreviewProvider {
    static var previews: some View {
        EnterUserDataView(isCreator: false)
    }
}
