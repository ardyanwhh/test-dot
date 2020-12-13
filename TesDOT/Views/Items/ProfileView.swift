//
//  ProfileView.swift
//  TesDOT
//
//  Created by Ardyan Wahyu on 10/12/20.
//

import SwiftUI

struct ProfileView: View {
  var body: some View {
    GeometryReader { g in
      NavigationView {
        VStack {
          Image("Profile")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: 200)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(radius: 6)
            .padding(.bottom)
          
          VStack(spacing: 6) {
            Text("Shinta Gyanrini")
              .font(.title2)
              .bold()
            
            VStack(spacing: 2) {
              Text("blablabla@icloud.com")
              
              Text("081273827380")
            }
          }
          
          Spacer()
        }
        .padding(.top, 40)
        .padding([.leading, .trailing])
        .navigationBarTitle("Profile", displayMode: .inline)
        .navigationBarModeifier(color: .accent, titleColor: .white)
      }
      
    }
  }
}

struct ProfileView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileView()
  }
}
