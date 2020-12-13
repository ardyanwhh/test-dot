//
//  HomeView.swift
//  TesDOT
//
//  Created by Ardyan Wahyu on 10/12/20.
//

import SwiftUI

struct HomeView: View {
  @ObservedObject private var state = ContentViewModel()
  
  init() {
    state.loadData()
  }
  
  var body: some View {
    GeometryReader { g in
      NavigationView {
        List(state.data) { value in
          VStack(alignment: .leading) {
            Text(value.title)
              .font(.title3)
              .bold()
            
            Text(value.content)
            
            if let image = value.image {
              RemoteImage(url: image)
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .conditionalShown(when: value.image != nil)
            }
            
            TabView {
              ForEach(0..<value.media.count) { i in
                RemoteImage(url: value.media[i])
                  .aspectRatio(contentMode: .fit)
                  .frame(maxWidth: .infinity)
              }
            }
            .tabViewStyle(PageTabViewStyle())
            .conditionalShown(when: value.image == nil)
          }
          .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.top)
        .navigationBarTitle("List", displayMode: .inline)
        .navigationBarModeifier(color: .accent, titleColor: .white)
      }
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
