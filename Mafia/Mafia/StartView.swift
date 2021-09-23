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
        
        let gradient = Gradient(colors: [.black, .pink])
        
        ZStack {
            Rectangle()
                .fill(LinearGradient(gradient: gradient, startPoint: .bottomTrailing, endPoint: .topLeading))
                .ignoresSafeArea()
            VStack{
                NavigationView {
                    NavigationLink(
                        destination: EnterView(),
                        label: {
                            Text("СОЗДАТЬ")
                                .bold()
                                .frame(width: 150, height: 70)
                                .cornerRadius(15.0)
                                .background(Color.theme.activeColor)
                                .foregroundColor(Color.theme.secondaryText)
                    })
                    NavigationLink(
                        destination: EnterView(),
                        label: {
                            Text("СОЗДАТЬ")
                                .bold()
                                .frame(width: 150, height: 70)
                                .cornerRadius(15.0)
                                .background(Color.theme.activeColor)
                                .foregroundColor(Color.theme.secondaryText)
                    })
                }.foregroundColor(.blue)
            }
            

        }
    }
}
    

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
