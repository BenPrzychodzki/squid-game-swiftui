//
//  ViewModel.swift
//  squid games swiftUI
//
//  Created by Beniamin Przychodzki on 07/11/2021.
//
import Foundation
import UIKit

extension Bundle {
    func decode(_ file: String) -> [PlayerModel] {
        guard let url = self.url(forResource: file, withExtension: "json") else {
            fatalError("Failed to locate \(file) in bundle.")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }

        let decoder = JSONDecoder()

        guard var loaded = try? decoder.decode([PlayerModel].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        

        return loaded
        
    }
    
    func getImg(player: PlayerModel) -> UIImage? {
        if player.pict != nil {
            let url = URL(string: player.pict!)
            let data = try? Data(contentsOf: url!)
            if data != nil {
                return UIImage(data: data!)
            }
            return nil
        }
        else {
            return UIImage(named: "placeholder-person")
        }
        
        
            
        }
    }
