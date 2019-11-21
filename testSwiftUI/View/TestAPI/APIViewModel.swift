//
//  APIViewModel.swift
//  testSwiftUI
//
//  Created by Papada Preedagorn on 20/11/2562 BE.
//  Copyright © 2562 Papada Preedagorn. All rights reserved.
//

import SwiftUI
import Combine

class APIViewModel: ObservableObject {
  @Published var item: [Item] = [] {
    didSet {
      didChange.send(self)
    }
  }
  
  var didChange = PassthroughSubject<APIViewModel, Never>()
  
  func search(){
    APICaller().callGetAPI(urlString: "https://scb-test-mobile.herokuapp.com/api/mobiles/") { [weak self] (result) in
      switch result {
      case .success(let data) :
        DispatchQueue.main.async {
          self?.item.append(contentsOf: data)
        }
      default:
        break
      }
    }
  }
}
