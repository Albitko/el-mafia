//
//  RolesView.swift
//  Mafia
//
//  Created by Alex on 25.09.2021.
//

import SwiftUI

struct RolesView: View {
    
    var roles : [String : Int]?
    
    var body: some View {
        HStack {
            Text("😈")
            Text("\(roles?["Mafia"] ?? 0)")
            Text("😇")
            Text("\(roles?["Peacefull"] ?? 0)")
            Text("💊")
            Text("\(roles?["Doctor"] ?? 0)")
            Text("👮‍♂️")
            Text("\(roles?["Sheriff"] ?? 0)")
        }
        .font(.largeTitle)
    }
}

struct RolesView_Previews: PreviewProvider {
    static var previews: some View {
        RolesView(roles: [
            "Mafia" : 2,
            "Sheriff" : 1,
            "Peacefull" : 4,
            "Doctor": 1
        ])
            .previewLayout(.sizeThatFits)
    }
}
