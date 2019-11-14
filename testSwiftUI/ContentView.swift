//
//  ContentView.swift
//  testSwiftUI
//
//  Created by Papada Preedagorn on 11/11/2562 BE.
//  Copyright © 2562 Papada Preedagorn. All rights reserved.
//

import SwiftUI

struct ContentCell: View {
  var item: TestClass
  var body: some View {
    return NavigationLink(destination: ContentDetail(item: item)) {
      Image(uiImage: UIImage(named: item.imageName) ?? UIImage())
        .resizable()
        .frame(width: 100, height: 100)
        .cornerRadius(10.0)
        //        .aspectRatio(1/1,contentMode: .fill)
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
              .frame(width: 50.0, height: 50.0)
            .shadow(radius: 10)
          })
          
      )
    }
  }
}

struct ContentTab: View {
  
  @State private var state = 1
  
  var body: some View {
    TabView(selection: $state) {
      ContentView(testList: testData).tabItem { Text("Home") }.tag(1)
      Text("Haha").tabItem {
        VStack {
          Text("User")
//          Image("call-center")
//          .resizable()
//          .frame(width: 50.0, height: 50.0)
        }
      }.tag(2)
    }.accentColor(Color.orange)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
//    ContentTab()
        ContentView(testList: testData)
  }
}
