//
//  ContentView.swift
//  TicTacToe2
//
//  Created by Angad Kumar on 5/7/25.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var TicTac = TicTacModel()
    
    var body: some View {
        VStack {
            Text("TIC TAC TOE")
                .font(.system(size: 45, weight: .heavy))
                .foregroundStyle(.blue)
            
            let col = Array(repeating: GridItem(.flexible()), count: 3)
            
            LazyVGrid(columns: col) {
                ForEach(0..<9) { i in
                    Button(action: {
                        TicTac.buttonTap(i: i)
                    }, label: {
                        Text(TicTac.buttonLabel(i: i))
                            .frame(width: 100, height: 100)
                            .font(.system(size: 45, weight: .heavy))
                            .background(.gray)
                            .foregroundStyle(.white)
                    })
                }
            }
            
            Button(action: {
                TicTac.resetGame()
            }, label: {
                Text("Restart Game")
                    .frame(width: 200, height: 50)
                    .background(.gray)
                    .foregroundStyle(.white)
                    .font(.system(size: 20, weight: .heavy))
                    .clipShape(Capsule())
            })
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
