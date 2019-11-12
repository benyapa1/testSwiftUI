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
  var ImageURL: String = "https://image.flaticon.com/icons/svg/2240/2240681.svg"
  var imageData: Data {
    guard let url = URL.init(string: ImageURL),
      let data = try? Data(contentsOf: url) else {
      return Data()
    }
    return data
  }
  var subName: String

}

let testData = [
  TestClass(name: "Pang", subName: "Pang"),
  TestClass(name: "Papada", subName: "Papada"),
  TestClass(name: "Preedagorn", subName: "Preedagorn")
]
