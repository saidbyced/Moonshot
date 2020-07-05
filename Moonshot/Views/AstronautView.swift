//
//  AstronautView.swift
//  Moonshot
//
//  Created by Chris Eadie on 05/07/2020.
//

import SwiftUI

struct AstronautView: View {
  
  let astronaut: Astronaut
  
  var body: some View {
    GeometryReader { geometry in
      ScrollView(.vertical) {
        VStack {
          Image(self.astronaut.id)
            .resizable()
            .scaledToFit()
            .frame(width: geometry.size.width)
          Text(self.astronaut.description)
            .padding()
        }
      }
    }
    .navigationBarTitle(Text(astronaut.name), displayMode: .inline)
  }
  
}

struct AstronautView_Previews: PreviewProvider {
  static let astronaut = Astronauts().list[(Int.random(in: 0..<Astronauts().list.count))]
  
  static var previews: some View {
    AstronautView(astronaut: astronaut)
  }
}
