//
//  main.swift
//  RegexHelper
//
//  Created by rlbot on 2019/11/25.
//  Copyright © 2019 WL. All rights reserved.
//

import Foundation


func gsubExample() {
    let string = "hello"
    let pattern = #"([aeiou])"#
    
    print(">------- RegexHelper.gsub() example -------<")
    print("String: \(string)")
    print("Pattern: \(pattern)\n")
    
    let replacement1 = #"<$1>"#
    print("replacement: " + replacement1)
    let newStr = RegexHelper.gsub(pattern: pattern, string: string, replacement: replacement1)
    print("  => \(newStr)\n")
    
    let replacement2 = #"*"#
    print("replacement: " + replacement2)
    
    let newStr2 = RegexHelper.gsub(pattern: pattern, string: string, replacement: replacement2)
    print("  => \(newStr2)\n")
}


func firstMatchExample() {
    let string = "hello"
    let pattern = #"(.)\1"#
    
    print(">---- RegexHelper.firstMatch() example ----<")
    print("String: \(string)")
    print("Pattern: \(pattern)")

    let matches = RegexHelper.firstMatch(pattern: pattern, string: string)
    print("  => \(matches)\n")
}


func matchExample() {
    let string = "cruel world"
    let pattern1 = #"\w+"#
    
    print(">------ RegexHelper.match() example -------<")
    print("String: \(string)")
    print("Pattern: \(pattern1)")

    let matches1 = RegexHelper.match(pattern: pattern1, string: string)
    print("  => \(matches1)\n")
    
    let pattern2 = #"(..)(..)"#
    print("Pattern: \(pattern2)")
    
    let matches2 = RegexHelper.match(pattern: pattern2, string: string)
    print("  => \(matches2)\n")
}



gsubExample()
firstMatchExample()
matchExample()

print(">------------------------------------------<\n")
