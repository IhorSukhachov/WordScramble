//
//  ContentView.swift
//  WordScramble
//
//  Created by Ihor Sukhachov on 10.11.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var usedWordws: [String] = []
    @State private var rootWord: String = ""
    @State private var newWord: String = ""
    var body: some View {
        NavigationStack {
            List {
                Section {
                    TextField("Enter your word:", text: $newWord)
                    
                }
                Section {
                    ForEach(usedWordws, id: \.self) { word in
                        Text(word)
                    }
                }
            }
        }
    }
}



#Preview {
    ContentView()
}
