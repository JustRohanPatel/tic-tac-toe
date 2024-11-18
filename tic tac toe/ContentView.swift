//
//  ContentView.swift
//  tic tac toe
//
//  Created by rohan patel on 10/27/24.
//

import SwiftUI

struct ContentView: View {
    @State private var moves = Array(repeating: "",count: 9)
    @State private var xTurn = true
    var body: some View {
        VStack {
            
            Text("Tic Tac Toe")
                .font(.title).bold()
            LazyVGrid(columns: Array(repeating: GridItem(.fixed(120)), count: 3), content: {
                ForEach(0..<9) { index in
                    ZStack{
                        Color.blue
                        Text(moves[index])
                            .font(.system(size: 90))
                            .fontWeight(.heavy)
                    }
                        .frame(width: 120, height: 120,alignment: .center)
                        .cornerRadius(30)
                        .onTapGesture {
                            withAnimation(.default) {
                                if moves[index] == "" {
                                    moves[index] = xTurn ? "X" : "0"
                                    xTurn.toggle()
                                }
                            }
                        }
                }
            })
                      }
                      
        .preferredColorScheme(.dark)
    }
                      }

#Preview {
    ContentView()
}
