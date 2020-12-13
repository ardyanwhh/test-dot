//
//  ViewExtension.swift
//  SwiftUISignUp
//
//  Created by Ardyan Wahyu on 22/11/20.
//

import SwiftUI

struct EmptyModifier: ViewModifier {
  private var isNotEmpty: Bool
  
  init(
    isNotEmpty: Bool = false
  ) {
    self.isNotEmpty = isNotEmpty
  }
  
  func body(content: Content) -> some View {
    Group {
      if isNotEmpty {
        content
      } else {
        EmptyView()
      }
    }
  }
}

extension View {
  func conditionalShown(when: Bool) -> some View {
    modifier(EmptyModifier(isNotEmpty: when))
  }
  
  func ifTrue(_ condition: Bool, apply: (AnyView) -> (AnyView)) -> AnyView {
    if condition {
      return apply(AnyView(self))
    } else {
      return AnyView(self)
    }
  }
}
