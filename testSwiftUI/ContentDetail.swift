//
//  ContentDetail.swift
//  testSwiftUI
//
//  Created by Papada Preedagorn on 12/11/2562 BE.
//  Copyright © 2562 Papada Preedagorn. All rights reserved.
//

import SwiftUI

struct ContentCheck: View {
  
  var list: [String] = []
  @State private var stateCheck = 0
  
  init(list: [String]) {
    // To remove only extra separators below the list:
    UITableView.appearance().tableFooterView = UIView()
    
    // To remove all separators including the actual ones:
    UITableView.appearance().separatorStyle = .none
    UITableView.appearance().tableFooterView = UIView()
    self.list = list
  }
  
  var body: some View {
    return VStack(alignment: .leading) {
      Text("Please choose your order :")
      List(0 ..< list.count) { item in
        HStack {
          Button(action: {
            self.stateCheck = item
          }) {
            HStack{
              if self.stateCheck == item {
                Image("verified")
                  .resizable()
                  .aspectRatio(1/1 ,contentMode: .fit)
                  .frame(width: 25, height: 25)
              } else {
                Image("circle")
                  .resizable()
                  .aspectRatio(1/1 ,contentMode: .fit)
                  .frame(width: 25, height: 25)
              }
              Text(self.list[item])
            }
          }
        }
      }
    }
  }
}


struct ContentDetail: View {
  
  var item: TestClass
  @State private var countQty = 0
  @State private var countAdd = 0
  var body: some View {
    
    VStack {
      VStack(alignment: .leading) {
        PageView(item.imageList.map({ (strImage) -> Image in
          return Image(strImage).resizable()
        }))
          .aspectRatio(1/1, contentMode: .fit)
          .padding(.trailing, 20)
          .padding(.leading, 20)
        Text(item.subName)
          .padding()
          .foregroundColor(Color.gray)
          .lineLimit(3)
      }.padding(.bottom, 10)
      
      VStack {
        HStack(){
          Text("Quantity")
          Stepper(value: $countQty, in: 0...10) {
            Text("\(countQty)")
          }.padding(.leading, 130)
        }
        ContentCheck(list: ["pork","Chicken"])
        VStack {
          Text("")
          TextField("Comments", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            .padding()
            .minimumScaleFactor(5)
            .lineLimit(3)
            .background(Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0))
            .cornerRadius(5.0)
        }
        Spacer()
        Button(action: {}) {
          Text("Add to cart")
            .font(.headline)
        }
        .padding(.trailing, 100)
        .padding(.leading, 100)
        .padding(.bottom, 15)
        .padding(.top, 15)
        .accentColor(.white)
        .background(Color.red)
        .cornerRadius(50.0)
      }
      .padding(.top, 40)
      .padding(.horizontal, 40.0)
      .background(Color.white)
    }.navigationBarTitle(Text(item.name))
  }
}

struct ContentDetail_Previews: PreviewProvider {
  static var previews: some View {
    ContentDetail(item: TestClass(
      name: "Kapao with egg",
      imageName: "IMG_3963",
      imageList: ["IMG_3949","IMG_3962","IMG_3963"],
      subName: "It's amazing!"
      )
    )
  }
}
