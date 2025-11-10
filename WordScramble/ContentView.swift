//
//  ContentView.swift
//  WordScramble
//
//  Created by Ihor Sukhachov on 10.11.2025.
//

import SwiftUI

struct ContentView: View {
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
        List(0..<5) {
            Text("dynamic list \($0)") //csn use it without using foreach
        }
    }
}

#Preview {
    ContentView()
}
