//
//  ProviderMock.swift
//  LearningAboutTestTests
//
//  Created by Kleiton Mendes on 12/01/23.
//

@testable import LearningAboutTest

class ProviderMock: ProviderProtocol {
 
    enum Status {
        case sucess
        case noData
        case invalidResponse
    }
    
    let status: Status
    
    init(status: Status) {
        self.status = status
    }
    
    func getJoke(_ completion: @escaping ([String]?, LearningAboutTest.JokeError?) -> ()) {
        switch status {
        case .invalidResponse:
            completion(nil, .invalidResponse)
        case .noData:
            completion(nil, .noData)
        case .sucess:
            completion(["animal", "career", "celebrety", "dev", "explicit", "fashion", "food", "history", "money", "music", "movie", "political", "religion", "science", "sport", "travel"], nil)
        }
    }
}
