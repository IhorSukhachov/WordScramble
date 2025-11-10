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
            Text("Hello world")
            Text("Hello world")
            Text("Hello world")
            ForEach(0..<5) {
                Text("dynamic text \($0)")
            }
        }
    }
}

#Preview {
    ContentView()
}
