//
//  ContentView.swift
//  TesDOT
//
//  Created by Ardyan Wahyu on 10/12/20.
//

import SwiftUI

struct ContentView: View {
  @State private var selection: Int = 0
  
  init() {
    UITabBar.appearance().barTintColor = UIColor.white
  }
  
  var body: some View {
    TabView(selection: $selection) {
      HomeView()
        .tabItem {
          Image(systemName: "house")
          
          Text("List")
        }
        .tag(0)
      
      GalleryView()
        .tabItem {
          Image(systemName: "photo.on.rectangle")
          
          Text("Galllery")
        }
        .tag(1)
      
      ProfileView()
        .tabItem {
          Image(systemName: "person")
          
          Text("Profile")
        }
        .tag(2)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
