//
//  PlayerModel.swift
//  squid games swiftUI
//
//  Created by Szymon Trochimiak on 07/11/2021.
//

import Foundation

struct PlayerModel: Codable, Identifiable {
    let uuid = UUID()
    let id, name: String
    let pict: String?
    let description: String
    
}

class MyVariables: ObservableObject {
    @Published var isEliminated = [false, false, false, false, false, false, false]
}
