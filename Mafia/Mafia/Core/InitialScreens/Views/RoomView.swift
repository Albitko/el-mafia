//
//  RoomView.swift
//  Mafia
//
//  Created by Alex on 25.09.2021.
//

import SwiftUI

struct user: Hashable{
    var name: String
    var isReady: Bool
}

struct RoomView: View {
    
    // for test purposes
    var users: [user]? = [
        user(name: "John", isReady: true),
        user(name: "Kate", isReady: false),
        user(name: "Stasy", isReady: true),
        user(name: "Alex", isReady: true),
        user(name: "Karl", isReady: false)
    ]
    
    var roles = [
        "Mafia" : 2,
        "Sheriff" : 1,
        "Peacefull" : 4,
        "Doctor": 1
    ]
    
    var body: some View {
        VStack {
            Text("Комната N 1234")
                .font(.largeTitle)
                .padding()
            
            Spacer()
            
            VStack(alignment: .leading) {
                
                ForEach(users!, id: \.self) { user in
                    UserRowView(username: user.name, isReady: user.isReady)
                }
                
                Button("ГОТОВ") {
                    print("Button tapped!")
                }
                .padding()
            }
            
            Spacer()
            
            RolesView(roles: roles)
        }
        .navigationBarBackButtonHidden(true)
        
    }
}

struct RoomView_Previews: PreviewProvider {
    static var previews: some View {
        RoomView()
    }
}
