//
//  TestList.swift
//  testSwiftUI
//
//  Created by Papada Preedagorn on 14/11/2562 BE.
//  Copyright © 2562 Papada Preedagorn. All rights reserved.
//

import SwiftUI

struct TestList: View {
    var body: some View {
      ScrollView(.horizontal, showsIndicators: false) {
        HStack(alignment: .top, spacing: 0) {
          ForEach(testData) { item in
           ItemContent(item: item)
            .padding()
          }
        }
        
      }
    }
}

struct ItemContent: View {
  
  var item: TestClass
  
  var body: some View {
    VStack() {
      Image(item.imageName)
      .resizable()
      .clipShape(Circle())
        .overlay(Circle().stroke(Color.white, lineWidth: 5))
      .shadow(radius: 9)
      .frame(width: 155, height: 155)
//      .cornerRadius(5)
      Text(item.name)
    }
  }
  
  
}

struct TestList_Previews: PreviewProvider {
    static var previews: some View {
        TestList()
    }
}
