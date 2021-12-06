//
//  main.swift
//  No rights reserved.
//

import Foundation
import RegexHelper

func main() {
    let fileUrl = URL(fileURLWithPath: "./aoc-input")
    guard let inputString = try? String(contentsOf: fileUrl, encoding: .utf8) else { fatalError("Invalid input") }
    
    let lines = inputString.components(separatedBy: "\n")
        .filter { !$0.isEmpty }
    
    var fishes = lines[0].components(separatedBy: ",").map { Int($0)! }
    
    for _ in 0 ..< 80 {
        var newFishCount = 0
        for i in 0 ..< fishes.count {
            if fishes[i] == 0 {
                fishes[i] = 6
                newFishCount += 1
            } else {
                fishes[i] -= 1
            }
        }
        for _ in 0 ..< newFishCount {
            fishes.append(8)
        }
    }
    
    print(fishes.count)
}

main()
