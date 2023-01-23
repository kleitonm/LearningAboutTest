//
//  StringsUtils.swift
//  LearningAboutTest
//
//  Created by Kleiton Mendes on 17/01/23.
//

import UIKit

extension String {
    
    func removeWithSpace() -> String {
        return self.replace(string: "", replacement: "")
    }
    
    func replace(string: String, replacement: String) -> String {
        return self.replacingOccurrences(of: string, with: replacement, options: .literal, range: nil)
    }
    
    func isValueEmail() -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailTest.evaluate(with: self)
    }
    
}
