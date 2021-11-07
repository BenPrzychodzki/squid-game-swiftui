//
//  MainView.swift
//  squid games swiftUI
//
//  Created by Beniamin Przychodzki on 07/11/2021.
//

import SwiftUI

struct MainView: View {
    
    var players = Bundle.main.decode("players")
    @StateObject var globalVars = MyVariables()
    
    var body: some View {
        NavigationView {
            
            List(0..<players.count) { i in
                NavigationLink(destination: DetailedView(player: players[i], globalVars: globalVars, index: i), label: {
                    HStack {
                        Image(uiImage: Bundle.main.getImg(player: players[i])!)
                            .resizable()
                            //.scaledToFit()
                            .frame(width: 50, height: 50)
                            .cornerRadius(4)
                            .grayscale(globalVars.isEliminated[i] ? 1 : 0)
                        Text(players[i].name)
                    }
                })
                
                
                
            }
            .navigationTitle("Squid Game")
        }
                }
    
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
