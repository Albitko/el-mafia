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
        
        NavigationView {
            VStack {
                
                VStack(alignment: .leading) {
                    Text("EL")
                    Text("MAFIA")
                }
                .font(.largeTitle)
                
                Spacer()
                
                NavigationLink(destination: EnterUserDataView(isCreator : true)) {
                    Text("Создать")
                }
                NavigationLink(destination: EnterUserDataView(isCreator : false)) {
                    Text("Войти")
                }
                
                Spacer()
            }
            
        }
        .navigationBarHidden(true)
        
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
