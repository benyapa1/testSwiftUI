//
//  ContentDetail.swift
//  testSwiftUI
//
//  Created by Papada Preedagorn on 12/11/2562 BE.
//  Copyright © 2562 Papada Preedagorn. All rights reserved.
//

import SwiftUI

struct ContentSpacer: View {
  @State private var count = 0
  var label: String
  var spacing: CGFloat
  
  var body: some View {
    return HStack {
      Text("Quantity")
      Stepper(value: $count, in: 0...10) {
        Text("\(count)")
      }.padding(.leading, spacing)
    }
  }
}

struct ContentDetail: View {
  
  //  var item: TestClass
  @State private var countQty = 0
  @State private var countAdd = 0
  
  var body: some View {
    NavigationView {
      VStack {
        VStack(alignment: .leading) {
          Image("call-center")
          .resizable()
            .frame(width: 300, height: 300.0)
          Text("Description")
            .foregroundColor(Color.gray)
            .lineLimit(3)
        }.padding(.bottom, 20)
        HStack(){
          Text("Quantity")
          Stepper(value: $countQty, in: 0...10) {
            Text("\(countQty)")
          }.padding(.leading, 130)
        }.padding(.horizontal, 40.0)
        HStack(){
          Text("Add more additional")
          Stepper(value: $countAdd, in: 0...5) {
            Text("\(countAdd)")
          }.padding(.leading, 41)
        }.padding(.horizontal, 40.0)
        VStack {
          Text("")
          TextField("Comments", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            .padding()
          .minimumScaleFactor(5)
          .lineLimit(3)
            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0))
            .cornerRadius(5.0)
        }.padding(.horizontal, 40.0)
        Spacer()
        Button(action: {}) {
          Text("Add to cart")
        }
        .padding(.trailing, 100)
        .padding(.leading, 100)
        .padding(.bottom, 15)
        .padding(.top, 15)
        .accentColor(.white)
        .background(Color.red)
        .cornerRadius(50.0)
      }.navigationBarTitle(Text("NAME"))
    }
  }
}

struct ContentDetail_Previews: PreviewProvider {
  static var previews: some View {
    ContentDetail()
  }
}
