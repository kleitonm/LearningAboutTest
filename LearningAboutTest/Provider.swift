//
//  Provider.swift
//  LearningAboutTest
//
//  Created by Kleiton Mendes on 12/01/23.
//

import Foundation

enum JokeError: Error {
    case noData
    case invalidResponse
}

protocol ProviderProtocol {
    func getJoke(_ completion: @escaping ([String]?,JokeError?) -> ())
}

class Provider: ProviderProtocol {
    func getJoke(_ completion: @escaping ([String]?, JokeError?) -> ()) {
        let Url = String(format: "https://api.chucknorris.io/jokes/categories")
        guard let serviceUrl = URL(string: Url) else { return }
        
        let request = URLRequest(url: serviceUrl)
        
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            if (error != nil) {
                completion(nil, .noData)
            }
            
            if let data = data {
                do {
                    let jokes = try JSONDecoder().decode([String].self, from: data)
                    completion(jokes, nil)
                } catch {
                    completion(nil, .invalidResponse)
                }
            }
        }.resume()
    }
    
    
}
