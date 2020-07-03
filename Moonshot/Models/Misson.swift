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
  let launchDate: Date?
  let crew: [CrewPerson]
  let description: String
  
  var displayName: String {
    "Apollo \(id)"
  }
  
  var image: String {
    "apollo\(id)"
  }
  
  var formattedLaunchDate: String {
    if let launchDate = launchDate {
      let formatter = DateFormatter()
      formatter.dateStyle = .long
      
      return formatter.string(from: launchDate)
    } else {
      return "N/A"
    }
  }
  
}
