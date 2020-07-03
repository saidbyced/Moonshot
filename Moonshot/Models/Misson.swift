//
//  Mission.swift
//  Moonshot
//
//  Created by Chris Eadie on 03/07/2020.
//

import Foundation

struct Mission: Codable, Identifiable {
  
  struct CrewPerson: Codable {
    let name: String
    let role: String
  }
  
  let id: Int
  let launchDate: String?
  let crew: [CrewPerson]
  let description: String
  
  var displayName: String {
    "Apollo \(id)"
  }
  
  var image: String {
    "apollo\(id)"
  }
  
}
