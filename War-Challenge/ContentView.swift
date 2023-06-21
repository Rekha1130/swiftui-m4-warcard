//
//  ContentView.swift
//  War-Challenge
//
//  Created by Rekha Aldas on 02/05/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
    
    var body: some View {
        
        ZStack {
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                
                HStack(spacing: 60) {
                    Image(playerCard)
                    Image(cpuCard)
                }
                Spacer()
                Button {
                    
                    // Generate a random number between 2 & 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    if playerCard > cpuCard {
                        playerScore += 1
                    }
                    else if cpuCard > playerCard {
                        cpuScore += 1
                    }
                } label: {
                    Image("dealbutton")
                        .resizable()
                        .frame(width: 120, height: 55)
                }
                Spacer()
                HStack(spacing: 90) {
                    VStack {
                        Text("Player")
                            .padding()
                        Text(String(playerScore))
                    }
                    VStack {
                        Text("CPU")
                            .padding()
                        Text(String(cpuScore))
                    }
                    .padding()
                }
                .foregroundColor(Color.white)
                .font(.largeTitle)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
