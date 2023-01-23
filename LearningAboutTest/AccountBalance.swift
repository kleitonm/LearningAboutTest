//
//  AccountBalance.swift
//  LearningAboutTest
//
//  Created by Kleiton Mendes on 17/01/23.
//

import UIKit

class AccountBalance {
    
    var balance: Double = 0.0
    
    func getSpecialLimit() -> Double {
        if balance < 100 {
            return balance + 10
        } else if balance > 600 {
            return balance + 1000
        }
        return balance
    }
}
