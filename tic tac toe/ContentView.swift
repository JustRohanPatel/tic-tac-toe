//
//  ContentView.swift
//  tic tac toe
//
//  Created by rohan patel on 10/27/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Text("Tic Tac Toe")
                .font(.title).bold()
            LazyVGrid(columns: Array(repeating: GridItem(.fixed(120)), count: 3), content: {
                ForEach(0..<9) { index in
                    Color.blue
                        .frame(width: 120, height: 120,alignment: .center)
                        .cornerRadius(30)
                }
            })
                      }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
