//
//  ExString.swift
//  NLP_100_Swift
//
//  Created by jun on 2019/12/04.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation

extension String {
    var length: Int {
        let string_NS = self as NSString
        return string_NS.length
    }

    func pregMatche(pattern: String, options: NSRegularExpression.Options = []) -> Bool {
        guard let regex = try? NSRegularExpression(pattern: pattern, options: options) else {
            return false
        }
        let matches = regex.matches(in: self, options: [], range: NSMakeRange(0, self.length))
        return matches.count > 0
    }

    func pregMatche(pattern: String, options: NSRegularExpression.Options = [], matches: inout [String]) -> Bool {
        guard let regex = try? NSRegularExpression(pattern: pattern, options: options) else {
            return false
        }
        let targetStringRange = NSRange(location: 0, length: self.length)
        let results = regex.matches(in: self, options: [], range: targetStringRange)
        for i in 0 ..< results.count {
            for j in 0 ..< results[i].numberOfRanges {
                let range = results[i].range(at: j)
                matches.append((self as NSString).substring(with: range))
            }
        }
        return results.count > 0
    }

    func pregReplace(pattern: String, with: String, options: NSRegularExpression.Options = []) -> String {
        let regex = try! NSRegularExpression(pattern: pattern, options: options)
        return regex.stringByReplacingMatches(in: self, options: [], range: NSMakeRange(0, self.length), withTemplate: with)
    }
   
   func splitInto(_ length: Int) -> [String] {
       var str = self
       for i in 0 ..< (str.count - 1) / max(length, 1) {
           str.insert(",", at: str.index(str.startIndex, offsetBy: (i + 1) * max(length, 1) + i))
       }
       return str.components(separatedBy: ",")
   }
}

