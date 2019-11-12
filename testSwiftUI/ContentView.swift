//
//  ContentView.swift
//  testSwiftUI
//
//  Created by Papada Preedagorn on 11/11/2562 BE.
//  Copyright © 2562 Papada Preedagorn. All rights reserved.
//

import SwiftUI

struct ContentCell: View {
  var item: TestClass!
  var body: some View {
    return NavigationLink(destination: ContentDetail_Previews.previews) {
      Image(uiImage: UIImage(named: "call-center") ?? UIImage())
        .resizable()
        .frame(width: 100, height: 100)
        .padding(5)
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
        ContentCell(item: item)
      }.navigationBarTitle(Text("MENU"))
        .navigationBarItems(trailing:
          Button(action: {
            
          }, label: {
            Image("goods")
              .resizable()
            .frame(width: 50, height: 50)
          })

      )
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(testList: testData)
  }
}
