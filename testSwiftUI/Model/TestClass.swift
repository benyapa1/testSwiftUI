//
//  TestClass.swift
//  testSwiftUI
//
//  Created by Papada Preedagorn on 11/11/2562 BE.
//  Copyright © 2562 Papada Preedagorn. All rights reserved.
//

import SwiftUI

struct TestClass: Identifiable {
  
  var id = UUID()
  var name: String
  var imageName: String
  var imageList: [String]
//  var imageURL: String = "https://image.flaticon.com/icons/svg/2240/2240681.svg"
//  var imageData: Data {
//    guard let url = URL.init(string: imageURL),
//      let data = try? Data(contentsOf: url) else {
//      return Data()
//    }
//    return data
//  }
  var subName: String
}

let imageList = ["IMG_3949","IMG_3962","IMG_3963"]

let testData = [
  TestClass(
    name: "Gapao",
    imageName: "IMG_3949",
    imageList: imageList,
    subName: "It's delicious!"),
  TestClass(
    name: "Gapao with fried egg",
    imageName: "IMG_3962",
    imageList: imageList,
    subName: "It's very very good!"),
  TestClass(
    name: "Gapao with omelet",
    imageName: "IMG_3963",
    imageList: imageList,
    subName: "It's amazing!")
]

struct Item: Codable, Identifiable {
  let thumbImageURL: String
  let brand: String
  let price: Float
  let description: String
  let name: String
  let rating: Float
  let id: Int
  var isFav: Bool = false
  
  private enum CodingKeys: String, CodingKey {
      case thumbImageURL
      case brand
      case price
      case description
      case name
      case rating
      case id
  }
}
