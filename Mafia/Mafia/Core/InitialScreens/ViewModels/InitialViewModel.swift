//
//  InitialViewModel.swift
//  Mafia
//
//  Created by Alex on 26.09.2021.
//

import Foundation
import SwiftUI

class InitialViewModel: ObservableObject {
    
    @Published var users: [User] = [User(name: "x", isReady: false, role: .mafia)]
    
    func createNewRoom(creatorName: String) {
        print(creatorName)
    }

    func connectToRoom(userName: String, roomNumber: String) {
        print(roomNumber)
    }
    
    func sendTestMsg() {
        SocketService.shared.connectSocket{ (success) in
            if success {
                print("CONNECTED!!!")
            }
        }
    }
    
    func sendeSomeBody() {
        SocketService.shared.sendSomebody()
    }
    
    func listenTest() {
        SocketService.shared.listenTest { [weak self] (result) in
            print("IN HANDLER")
            print("+++++\(result["msg"]!)")
        }
    }
}
