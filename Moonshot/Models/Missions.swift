//
//  Missions.swift
//  Moonshot
//
//  Created by Chris Eadie on 03/07/2020.
//

import Foundation

struct Missions {
  let list: [Mission] = Bundle.main.decode("missions.json")
}
