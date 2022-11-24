//
//  ContentView.swift
//  BlackJack21
//
//  Created by Arshdeep Badhan on 2022-11-10.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerFirstCard = "card_back"
    @State private var playerSecondCard = "card_back"
    @State private var playerThirdCard = "card_back"
    @State private var cpuFirstCard = "card_back"
    @State private var cpuSecondCard = "card_back"
    @State private var cpuThirdCard = "card_back"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    var suits = ["Diamonds", "Hearts", "Spades", "Clubs"]
    
    
    var body: some View {
        
        //Background
        ZStack{
            Image("background").resizable().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            //Screen Contents
            VStack{
                
                //Logo
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                //Cards
                HStack{
                    Spacer()
                    
                    Image(playerFirstCard).resizable().aspectRatio(contentMode: .fit)
                    
                    Spacer()
                    
                    Image(playerSecondCard).resizable().aspectRatio(contentMode: .fit)
                    
                    Spacer()
                    
                    Image(playerThirdCard).resizable().aspectRatio(contentMode: .fit)
                    
                    Spacer()
                }
                
                //Deal Button
                Spacer()
                
                //Player Cards
                HStack {
                    Button {
                        //Generate a random number between 2 and 14
                        let firstRand = Int.random(in: 2...13)
                        let secondRand = Int.random(in: 2...13)
                        let thirdRand = Int.random(in: 2...13)
                        
                        // update the cards
                        playerFirstCard = suits.randomElement()! + String(firstRand)
                        playerSecondCard = suits.randomElement()! + String(secondRand)
                        playerThirdCard = suits.randomElement()! + String(thirdRand)
                        
                        let randomSuit = suits.randomElement()!
                        
                        // update the cards
                        if(firstRand < 10){ //due to the naming of the cards
                            playerFirstCard = randomSuit + "0" + String(firstRand)
                        }
                        else {
                            playerFirstCard = randomSuit + String(firstRand)
                        }
                        
                        if(secondRand < 10){ // due to the naming of the cards
                            playerSecondCard = randomSuit + "0" + String(secondRand)
                        }
                        
                        else{
                            playerSecondCard = randomSuit + String(secondRand)
                        }
                        
                        if(thirdRand < 10){ // due to the naming of the cards
                            playerThirdCard = randomSuit + "0" + String(thirdRand)
                        }
                        
                        else{
                            playerThirdCard = randomSuit + String(thirdRand)
                        }
                        
                        //Update Score
                        
                    } label: {
                        Text("Hit")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                    
                    
//                    Button {
//                        //Generate a random number between 2 and 14
//                        let playerRand = Int.random(in: 2...13)
//                        let cpuRand = Int.random(in: 2...13)
//                        let randomSuit = suits.randomElement()!
//
//                        // update the cards
//                        if(playerRand < 10){ //due to the naming of the cards
//                            playerCard = randomSuit + "0" + String(playerRand)
//                        }
//                        else {
//                            playerCard = randomSuit + String(playerRand)
//                        }
//
//                        if(cpuRand < 10){ // due to the naming of the cards
//                            cpuCard = randomSuit + "0" + String(cpuRand)
//                        }
//
//                        else{
//                            cpuCard = randomSuit + String(cpuRand)
//                        }
//
//                        //update the score
//                        if(playerRand > cpuRand){
//                            playerScore += 1
//                        }
//                        else if (cpuRand > playerRand) {
//                            cpuScore += 1
//                        }
//
//                    } label: {
//                        Text("Stand")
//                            .font(.title)
//                            .fontWeight(.semibold)
//                    }
                }
                
                Spacer()
                
                
                //Scores
                HStack(){
                    Spacer()
                    VStack{
                        Text("Player").font(.largeTitle).foregroundColor(Color.white).padding(.bottom)
                        Text(String(playerScore)).font(.largeTitle).foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(.largeTitle).foregroundColor(Color.white).padding(.bottom)
                        Text(String(cpuScore)).font(.largeTitle).foregroundColor(Color.white)
                    }
                    Spacer()
                }
                
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
