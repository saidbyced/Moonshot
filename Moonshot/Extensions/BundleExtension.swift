//
//  BundleExtension.swift
//  Moonshot
//
//  Created by Chris Eadie on 02/07/2020.
//

import Foundation

extension Bundle {
  func decodeAstronauts(from file: String) -> [Astronaut] {
    
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError("Failed to locate \(file) in bundle.")
    }
    
    guard let data = try? Data(contentsOf: url) else {
      fatalError("Failed to load \(file) from bundle.")
    }
    
    let decoder = JSONDecoder()
    
    guard let loaded = try? decoder.decode([Astronaut].self, from: data) else {
      fatalError("Failed to decode \(file) from bundle.")
    }
    
    return loaded
    
  }
}
