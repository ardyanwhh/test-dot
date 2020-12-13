//
//  NavBarModifier.swift
//  TesDOT
//
//  Created by Ardyan Wahyu on 12/12/20.
//

import SwiftUI

struct NavBarModifier: ViewModifier {
  init(
    transparent: Bool,
    color: UIColor,
    titleColor: UIColor
  ) {
    let appearance = UINavigationBarAppearance()
    
    if transparent == true {
      appearance.configureWithTransparentBackground()
    } else {
      appearance.backgroundColor = color
    }
    
    appearance.largeTitleTextAttributes = [
      .foregroundColor: titleColor
    ]
    
    appearance.titleTextAttributes = [
      .foregroundColor: titleColor
    ]
    
    UINavigationBar.appearance().standardAppearance = appearance
    UINavigationBar.appearance().scrollEdgeAppearance = appearance
    UINavigationBar.appearance().compactAppearance = appearance
  }
  
  func body(content: Content) -> some View {
    content
  }
}

extension View {
  func navigationBarModeifier(
    transparent: Bool = false,
    color: UIColor = UIColor.white,
    titleColor: UIColor = UIColor.black
  ) -> some View {
    self.modifier(
      NavBarModifier(
        transparent: transparent,
        color: color,
        titleColor: titleColor
      )
    )
  }
}
