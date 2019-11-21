//
//  APICaller.swift
//  testSwiftUI
//
//  Created by Papada Preedagorn on 20/11/2562 BE.
//  Copyright © 2562 Papada Preedagorn. All rights reserved.
//

import SwiftUI

class APICaller {
  
  func callGetAPI(urlString urlGetListString: String, _ completion: @escaping (Result<[Item], Error>) -> Void){
    if let url = URL(string: urlGetListString) {
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completion(Result.failure(error))
            } else if let data = data, let response = response as? HTTPURLResponse {
                if response.statusCode == 200 {
                    do {
                        let item = try JSONDecoder().decode([Item].self, from: data)
                        completion(Result.success(item))
                        
                    } catch {
                        completion(.failure(error))
                    }
                }
            }
        }
        task.resume()
    }
  }
}
