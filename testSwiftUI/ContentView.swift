//
//  ContentView.swift
//  testSwiftUI
//
//  Created by Papada Preedagorn on 11/11/2562 BE.
//  Copyright © 2562 Papada Preedagorn. All rights reserved.
//

import SwiftUI

struct contentCell: View {
  var item: TestClass!
  var body: some View {
    return NavigationLink(destination: Text(item.name)) {
      Image(uiImage: UIImage(named: "call-center") ?? UIImage())
        .resizable()
        .frame(width: 50, height: 50)
        .cornerRadius(40)
      VStack(alignment: .leading) {
        Text(item.name).font(.headline)
        Text(item.subName)
          .font(.subheadline)
          .foregroundColor(Color.gray)
      }
    }
  }
}

struct ContentView: View {
  
  var testList: [TestClass] = []
  
  var body: some View {
    NavigationView {
      List(testList) { item in
        contentCell(item: item)
      }.navigationBarTitle(Text("NAME"))
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(testList: testData)
  }
}
