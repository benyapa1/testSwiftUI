//
//  TestAPI.swift
//  testSwiftUI
//
//  Created by Papada Preedagorn on 20/11/2562 BE.
//  Copyright © 2562 Papada Preedagorn. All rights reserved.
//

import SwiftUI

struct TestAPI: View {
  @ObservedObject var viewModel = APIViewModel()
  
  var body: some View {
    NavigationView {
      List(viewModel.item) { i in
        Text("\(i.name)")
      }
    }.onAppear(perform: search)
  }
  
  private func search( ){
    viewModel.search()
  }
}

struct TestAPI_Previews: PreviewProvider {
  static var previews: some View {
    TestAPI()
  }
}
