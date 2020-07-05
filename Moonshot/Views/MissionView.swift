//
//  MissionView.swift
//  Moonshot
//
//  Created by Chris Eadie on 03/07/2020.
//

import SwiftUI

struct MissionView: View {
  
  let mission: Mission
  let crew: [CrewMember]
  
  init(mission: Mission, astronauts: [Astronaut]) {
    self.mission = mission
    
    var matches = [CrewMember]()
    
    for member in mission.crew {
      if let match = astronauts.first(where: {$0.id == member.name}) {
        matches.append(CrewMember(role: member.role, astronaut: match))
      } else {
        fatalError("Missing \(member)")
      }
    }
    
    self.crew = matches
  }
  
  var body: some View {
    GeometryReader { geometry in
      ScrollView(.vertical) {
        VStack {
          MissionBadge(image: self.mission.image, width: geometry.size.width)
          Text(self.mission.description)
            .padding()
          ForEach(self.crew, id: \.role) { crewMember in
            HStack {
              CrewMemberHeadshot(crewMember: crewMember)
              if crewMember.role.contains("Commander") {
                CrewMemberDetails(crewMember: crewMember)
                  .font(.headline)
              } else {
                CrewMemberDetails(crewMember: crewMember)
              }
              Spacer()
            }
            .padding(.horizontal)
          }
          Spacer(minLength: 25)
        }
      }
      .navigationBarTitle(Text(mission.displayName), displayMode: .inline)
    }
  }
  
  struct MissionBadge: View {
    let image: String
    let width: CGFloat
    
    var body: some View {
      Image(image)
        .resizable()
        .scaledToFit()
        .frame(maxWidth: width * 0.7)
        .padding()
    }
  }
  
  struct CrewMemberHeadshot: View {
    let crewMember: CrewMember
    
    var body: some View {
      Image(crewMember.astronaut.id)
        .resizable()
        .frame(width: 86, height: 62)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.primary, lineWidth: 0.5))
    }
  }
  
  struct CrewMemberDetails: View {
    let crewMember: CrewMember
    
    var body: some View {
      VStack(alignment: .leading) {
        Text(crewMember.astronaut.name).font(.headline)
        Text(crewMember.role).foregroundColor(.secondary)
      }
    }
  }
  
  struct CrewMember {
    let role: String
    let astronaut: Astronaut
  }
  
}

struct MissionView_Previews: PreviewProvider {
  static let mission = Missions().list[(Int.random(in: 0..<Missions().list.count))]
  static let astronauts = Astronauts().list

  static var previews: some View {
    Group {
      MissionView(mission: mission, astronauts: astronauts)
      MissionView(mission: mission, astronauts: astronauts)
        .preferredColorScheme(.dark)
    }
  }
}
