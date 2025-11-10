//
//  ContentView.swift
//  WordScramble
//
//  Created by Ihor Sukhachov on 10.11.2025.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View {
        
    }
    
    func testStrings() {
        let input = "a b c"
        let letters = input.components(separatedBy: " ")
        let letter = letters.randomElement()
        let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
        //cheking word spelling:
        let word = "swift"
        let checker = UITextChecker()
    }
}

#Preview {
    ContentView()
}
