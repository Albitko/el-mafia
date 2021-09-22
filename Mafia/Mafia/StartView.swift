//
//  ContentView.swift
//  Mafia
//
//  Created by Alex on 22.09.2021.
//

import SwiftUI

struct StartView: View {
    
    let gradient = Gradient(colors: [.black, .blue])
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: gradient, startPoint: .bottom, endPoint: .top))
                .ignoresSafeArea()
            
            VStack {
                Text("El Mafia")
                    .fontWeight(.heavy)
                    .foregroundColor(.pink)
                    .font(.headline)
                
                Button("Button title") {
                    print("Button tapped!")
                }
                .padding()
                .background(Color.init(.cyan))
            }
        }
            
    }
}
    

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
