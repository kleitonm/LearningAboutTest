//
//  AsyncProcessSpec.swift
//  LearningAboutTest
//
//  Created by Kleiton Mendes on 10/01/23.
//

import Foundation

class AsyncProcess {
    
    var name = ""
    
    func callThatResultsInSideEffect() {
        DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 0.1) { [ weak self ] in
            self?.name = "Curso"
        }
    }
    
    func doStuff(_ completion: @escaping (String) -> ()) {
        DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 0.1) { [ weak self ] in
            completion("Curso")
        }
    }
}
