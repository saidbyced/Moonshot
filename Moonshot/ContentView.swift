//
//  ContentView.swift
//  Moonshot
//
//  Created by Chris Eadie on 02/07/2020.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    //    NavigationView {
    //      List(0..<100) { row in
    //        NavigationLink(
    //          destination: Text("Destination \(row)"),
    //          label: {
    //            Text("Row \(row)")
    //          }
    //        )
    //      }
    //      .navigationBarTitle("SwiftUI")
    //    }
    //    VStack {
    //      Button("Decode JSON") {
    //        let input = """
    //        {
    //          "name": "Taylor Swift",
    //          "address": {
    //            "street": "555, Taylor Swift Avenue",
    //            "city": "Nashville"
    //          }
    //        }
    //        """
    //
    //        let data = Data(input.utf8)
    //        let decoder = JSONDecoder()
    //        if let user = try? decoder.decode(User.self, from: data) {
    //          print(user.address.street)
    //        }
    //      }
    Text("Hello, Next.")
  }

//  struct User: Codable {
//    var name: String
//    var address: Address
//  }
//
//  struct Address: Codable {
//    var street: String
//    var city: String
//  }
}

struct CustomText: View {
  var text: String
  
  var body: some View {
    Text(text)
  }
  
  init(_ text: String) {
    print("Creating a new CustomText")
    self.text = text
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
