//
//  UserRowView.swift
//  Mafia
//
//  Created by Alex on 25.09.2021.
//

import SwiftUI

struct UserRowView: View {
    
    let username: String
    let isReady: Bool
    
    var body: some View {
        HStack {
            Text(username)
                .font(.title)
            Image(systemName: "checkmark.circle.fill")
                .opacity(isReady ? 1.0 : 0.0)
                .foregroundColor(.green)
        }
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView(username: "John", isReady: true)
            .previewLayout(.sizeThatFits)
    }
}
