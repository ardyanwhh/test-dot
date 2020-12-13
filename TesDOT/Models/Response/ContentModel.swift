//
//  ContentModel.swift
//  TesDOT
//
//  Created by Ardyan Wahyu on 12/12/20.
//

import Foundation

struct GetDataModel: Decodable, Identifiable {
  let id: Int?
  let message: String
  let data: DataModel
}

struct DataModel: Decodable, Identifiable {
  let id: Int?
  let content: [ContentModel]
}

struct ContentModel: Decodable, Identifiable {
  let id: Int
  let title, content, type: String
  let media: [String]
  let image: String?
}


