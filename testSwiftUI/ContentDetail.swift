//
//  ContentDetail.swift
//  testSwiftUI
//
//  Created by Papada Preedagorn on 12/11/2562 BE.
//  Copyright © 2562 Papada Preedagorn. All rights reserved.
//

import SwiftUI

struct ContentDetail: View {
  
  //  var item: TestClass
  @State private var count = 0
  
  var body: some View {
    VStack {
      VStack(alignment: .leading) {
        Text("NAME")
          .font(.headline)
          .lineLimit(1)
        Image("call-center")
        .resizable()
          .frame(width: 300, height: 300.0)
        Text("Description")
          .foregroundColor(Color.gray)
          .lineLimit(3)
      }.padding(.bottom, 30)
      HStack{
        Stepper(value: $count, in: 0...10) {
          Text("\(count)")
        }
        
      }.padding(.horizontal, 40.0)
    }
  }
}

struct ContentDetail_Previews: PreviewProvider {
  static var previews: some View {
    ContentDetail()
  }
}
