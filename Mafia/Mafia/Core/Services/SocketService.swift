//
//  SocketService.swift
//  Mafia
//
//  Created by Alex on 26.09.2021.
//

import Foundation
import SocketIO

class SocketService {
    
    static let shared = SocketService()
    
    private let manager = SocketManager(socketURL: URL(string: "ws://localhost:3000")!, config: [.log(true), .compress])
    
    var socket: SocketIOClient!
    
    private init() {
        socket = manager.defaultSocket
    }
    
    func connectSocket(completion: @escaping(Bool) -> () ) {
        disconnectSocket()
        socket.on(clientEvent: .connect) {[weak self] (data, ack) in
            print("socket connected")
            self?.socket.removeAllHandlers()
            completion(true)
        }
        socket.connect()
    }

    func disconnectSocket() {
        socket.removeAllHandlers()
        socket.disconnect()
        print("socket Disconnected")
    }

    func checkConnection() -> Bool {
        if socket.manager?.status == .connected {
            return true
        }
        return false
    }
    
    func sendSomebody() {
        if checkConnection() {
            print("TRY to send")
            SocketService.shared.socket.emit("Node JS server Port","OLOLOLOLOLO")
        } else {
            print("DONT CONNECT")
        }
    }
    
    func listenTest(completion: @escaping ([String:String]) -> Void) {
        print("LISTEEEN!!!!")
        SocketService.shared.socket.on("Test event") { (response, emitter) in
            print("Recieve some data")
            guard let cur = response[0] as? [String:String] else { return }
            completion(cur)
        }
    }
//    static func connect() {
//        self.socket.on(clientEvent: .connect) { (data, ack) in
//            print("Connected")
//            socket.emit("Node JS server Port", "Hi node js server")
//        }
//    }
    
    
//    socket.on("io client Port") { [weak self] (data, ack) in
//        if let data = data[0] as? [String: String],
//           let rawMessage = data["msg"] {
//            DispatchQueue.main.async {
//                self?.messages.append(rawMessage)
//            }
//        }
//    }
    
//    init() {
//        socket.connect()
//    }
}
