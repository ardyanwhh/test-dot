//
//  ContentViewModel.swift
//  TesDOT
//
//  Created by Ardyan Wahyu on 12/12/20.
//

import SwiftUI

class ContentViewModel: ObservableObject {
  @Published var data = [ContentModel]()
  @Published var imageArr: [[String]] = []
  
  func loadData() {
    URLSession
      .shared
      .dataTask(
        with: URL(string: Endpoints.baseURL)!
      ) { (data, res, err) in
        do {
          let parsedValue = try JSONDecoder()
            .self
            .decode(GetDataModel.self, from: data!)
          
          let ref = parsedValue.data.content
          
          DispatchQueue.main.async {
            self.data = ref
          }
        } catch {
          print(error.localizedDescription)
        }
      }
      .resume()
  }
}

