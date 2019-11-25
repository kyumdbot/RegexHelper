//
//  RegexHelper.swift
//  RegexHelper
//
//  Created by rlbot on 2019/11/25.
//  Copyright © 2019 WL. All rights reserved.
//

import Foundation

class RegexHelper {
    
    class func gsub(pattern: String, string: String, replacement: String) -> String {
        do {
            let regex = try NSRegularExpression(pattern: pattern, options: [])
            return regex.stringByReplacingMatches(in: string,
                                                  options: [],
                                                  range: NSRange(location: 0, length: string.count),
                                                  withTemplate: replacement)
        } catch {
            return ""
        }
    }
    
    
    class func firstMatch(pattern: String, string: String) -> Array<String> {
        do {
            let regex = try NSRegularExpression(pattern: pattern, options: [])
            let match = regex.firstMatch(in: string, options: [], range: NSRange(location: 0, length: string.count))
            var array = [String]()
            if let m = match {
                for idx in 0..<m.numberOfRanges {
                    if let range = Range(m.range(at: idx), in: string) {
                        array.append( String(string[range]) )
                    }
                }
            }
            return array
        } catch {
            return []
        }
    }
    
    
    class func match(pattern: String, string: String) -> Array<Array<String>> {
        do {
            let regex = try NSRegularExpression(pattern: pattern, options: [])
            var results = [[String]]()
            regex.enumerateMatches(in: string,
                                   options: [],
                                   range: NSRange(location: 0, length: string.count))
            { (match, flags, stop) in
                if let m = match {
                    var array = [String]()
                    for idx in 0..<m.numberOfRanges {
                        if let range = Range(m.range(at: idx), in: string) {
                            array.append( String(string[range]) )
                        }
                    }
                    results.append(array)
                }
            }
            return results
        } catch {
            return []
        }
    }
}
