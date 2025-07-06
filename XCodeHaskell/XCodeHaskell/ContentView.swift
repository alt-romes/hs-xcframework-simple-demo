//
//  ContentView.swift
//  XCodeHaskell
//
//  Created by Rodrigo Mesquita on 06/07/2025.
//

import SwiftUI
import Haskell.Foreign.Exports

struct ContentView: View {
    let result = doSomething()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("\(result)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
