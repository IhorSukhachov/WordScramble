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
            .onAppear(perform: startGame)
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
    
    func startGame() {
        if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
            if let startWords = try? String(contentsOf: startWordsURL) {
                let allWords = startWords.components(separatedBy: "\n")
                rootWord = allWords.randomElement() ?? "silkword"
                return
            }
        }
        fatalError("Could not load start.txt from bundle")
    }
    func isOriginal(word: String) -> Bool {
        !usedWordws.contains(word)
    }
    func isPossible(word: String) -> Bool {
        var tempWord = rootWord
        for letter in word {
            if let pos = tempWord.firstIndex(of: letter) {
                tempWord.remove(at: pos)
            } else {
                
            }
        }
        return true
    }
    func isReal(word: String) -> Bool {
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        return misspelledRange.location == NSNotFound
    }
}



#Preview {
    ContentView()
}
