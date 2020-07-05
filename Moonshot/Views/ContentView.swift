//
//  ContentView.swift
//  Moonshot
//
//  Created by Chris Eadie on 02/07/2020.
//

import SwiftUI

struct ContentView: View {
  let astronauts = Astronauts().list
  let missions = Missions().list
  
  var body: some View {
    NavigationView {
      List(missions) { mission in
        NavigationLink(destination: MissionView(mission: mission, astronauts: astronauts)) {
          MissionLogo(image: mission.image)
          MissionDetails(mission: mission)
        }
      }
      .navigationBarTitle("MoonShot")
    }
  }
  
  struct MissionLogo: View {
    var image: String
    
    var body: some View {
      Image(image)
        .resizable()
        .scaledToFit()
        .frame(width: 44, height: 44)
    }
  }
  
  struct MissionDetails: View {
    var mission: Mission
    
    var body: some View {
      VStack(alignment: .leading) {
        Text(mission.displayName)
          .font(.headline)
        Text(mission.formattedLaunchDate)
      }
    }
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      ContentView()
      ContentView()
        .preferredColorScheme(.dark)
    }
  }
}
