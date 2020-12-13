//
//  GalleryView.swift
//  TesDOT
//
//  Created by Ardyan Wahyu on 10/12/20.
//

import SwiftUI

struct GalleryView: View {
  @ObservedObject private var state = ContentViewModel()
  
  init() {
    state.loadData()
  }
  
  var body: some View {
    GeometryReader { g in
      NavigationView {
        VStack(spacing: 0) {
          ForEach(0..<3) { a in
            HStack(spacing: 0) {
              ForEach(0..<3) { i in
                Image("Unsplash")
                  .resizable()
                  .aspectRatio(contentMode: .fill)
                  .frame(width: g.size.width/3, height: g.size.width/3)
              }
            }
          }
          
          Spacer()
        }
        .navigationBarTitle("Gallery", displayMode: .inline)
        .navigationBarModeifier(color: .accent, titleColor: .white)
      }
    }
  }
}

struct GalleryView_Previews: PreviewProvider {
  static var previews: some View {
    GalleryView()
  }
}
