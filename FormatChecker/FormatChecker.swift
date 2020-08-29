//
//  FormatChecker.swift
//  FormatChecker
//
//  Created by 小嶌諒 on 2020/08/27.
//  Copyright © 2020 r-kojima. All rights reserved.
//

import Foundation

public extension String {
    
    // MARK: - Base Method
    func isMatch(pattern: String) -> Bool {
        guard let regex = try? NSRegularExpression(pattern: pattern) else {
            return false
        }
        let matches = regex.matches(in: self, range: NSRange(location: 0, length: self.count))
        return !matches.isEmpty
    }
    
    // MARK: - Useful Regular Expressions
    
    func isNumber() -> Bool {
        let pattern = "^[\\d]+$"
        return isMatch(pattern: pattern)
    }
}
