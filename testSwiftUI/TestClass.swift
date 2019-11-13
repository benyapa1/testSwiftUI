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

let testData = [
  TestClass(name: "Kapao",imageName: "IMG_3949", subName: "It's delicious!"),
  TestClass(name: "Kapao with egg",imageName: "IMG_3962", subName: "It's very very good!"),
  TestClass(name: "Kapao with egg",imageName: "IMG_3963", subName: "It's amazing!")
]
