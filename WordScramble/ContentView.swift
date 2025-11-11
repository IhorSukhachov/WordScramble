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
                        .textInputAutocapitalization(.never)
                    
                }
                Section {
                    ForEach(usedWordws, id: \.self) { word in
                        HStack{
                            Image(systemName: "\(word.count).circle")
                            Text(word)
                        }
                      
                    }
                }
            }
        }.navigationTitle(rootWord)
            .onSubmit(addNewWord)
    }
    func addNewWord() {
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        guard answer.count > 0 else {
            return
        }
        withAnimation {
            usedWordws.insert(answer, at: 0)
        }
        
        newWord = ""
    }
}



#Preview {
    ContentView()
}
