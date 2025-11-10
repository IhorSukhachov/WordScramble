//
//  ContentView.swift
//  WordScramble
//
//  Created by Ihor Sukhachov on 10.11.2025.
//

import SwiftUI

struct ContentView: View {
    let people = ["Leia", "Luke", "Yoda", "Chewbacca"]
    var body: some View {
        List {
            Section("Section 1"){
                Text("Hello world")
                Text("Hello world")
                Text("Hello world")
            }
            Section("Section 2"){
                ForEach(0..<5) {
                    Text("dynamic text \($0)")
                }
            }
            
        }.listStyle(.grouped)
        List(people, id: \.self) {
            Text($0)
        }
    }
}

#Preview {
    ContentView()
}
