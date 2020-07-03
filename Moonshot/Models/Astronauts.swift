//
//  Astronauts.swift
//  Moonshot
//
//  Created by Chris Eadie on 02/07/2020.
//

import Foundation

struct Astronauts {
  let list: [Astronaut] = Bundle.main.decode("astronauts.json")
}
