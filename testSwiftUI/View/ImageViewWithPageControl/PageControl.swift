//
//  PageControl.swift
//  testSwiftUI
//
//  Created by Papada Preedagorn on 13/11/2562 BE.
//  Copyright © 2562 Papada Preedagorn. All rights reserved.
//

import SwiftUI
import UIKit

struct PageControl: UIViewRepresentable {
  func makeCoordinator() -> PageControl.Coordinator {
    Coordinator(self)
  }
  
  var numberOfPages: Int
  @Binding var currentPage: Int
  
  func makeUIView(context: Context) -> UIPageControl {
    let control = UIPageControl()
    control.numberOfPages = numberOfPages
    control.addTarget(
        context.coordinator,
        action: #selector(Coordinator.updateCurrentPage(sender:)),
        for: .valueChanged)
    
    return control
  }
  
  func updateUIView(_ uiView: UIPageControl, context: Context) {
    uiView.currentPage = currentPage
  }
  
  class Coordinator: NSObject {
    var control: PageControl
    
    init(_ control: PageControl) {
      self.control = control
    }
    
    @objc func updateCurrentPage(sender: UIPageControl) {
      control.currentPage = sender.currentPage
    }
  }
}
