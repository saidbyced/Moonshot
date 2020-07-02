//
//  Astronauts.swift
//  Moonshot
//
//  Created by Chris Eadie on 02/07/2020.
//

import Foundation

struct Astronauts {
  let list = Bundle.main.decodeAstronauts(from: "astronauts.json")
}
