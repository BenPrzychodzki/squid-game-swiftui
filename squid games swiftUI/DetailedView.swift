//
//  DetailedView.swift
//  squid games swiftUI
//
//  Created by Beniamin Przychodzki on 07/11/2021.
//

import SwiftUI

struct DetailedView: View {
    
    @State var player: PlayerModel
    @StateObject var globalVars: MyVariables
    let index: Int
    
    
    var body: some View {
        VStack (spacing: 10) {
            Image(uiImage: Bundle.main.getImg(player: player)!)
                .resizable()
                //.scaledToFit()
                .frame(width: 150, height: 150)
                .cornerRadius(10)

                .grayscale(globalVars.isEliminated[index] ? 1 : 0)

                
            Text("ID: \(player.id)")
                .fontWeight(.bold)
                .lineLimit(1)
            Text("Name: \(player.name)")
                .fontWeight(.semibold)
                .lineLimit(1)
            Text("Description: \(player.description)")
                .lineLimit(4)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
            Button(globalVars.isEliminated[index] ? "Eliminated" : "Eliminate") {
                globalVars.isEliminated[index] = !globalVars.isEliminated[index]
            }
        }
    }
}


// variables just for preview purpouses 
struct DetailedView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedView(player: PlayerModel(id: "123", name: "Place-hol-der", pict: nil, description: "Test description dwd wd qwfqw qwr qwrq wf qwqw r qwr qwr qwr "), globalVars: MyVariables(), index: 0)
    }
}
