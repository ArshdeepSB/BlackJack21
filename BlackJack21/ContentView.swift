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
    @State private var firstRand = Int.random(in: 2...13)
    @State private var secondRand = Int.random(in: 2...13)
    @State private var thirdRand = Int.random(in: 2...13)
    @State private var results = ""
    
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
                
                Text(results)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
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
                VStack{
                    Button {
                        playerScore = 0
                        cpuScore = 0
                        results = ""
                        
                        firstRand = Int.random(in: 2...13)
                        secondRand = Int.random(in: 2...13)
                        
                        if(firstRand < 10){ //due to the naming of the cards
                            playerFirstCard = suits.randomElement()! + "0" + String(firstRand)
                        }
                        else {
                            playerFirstCard = suits.randomElement()! + String(firstRand)
                        }
                        
                        if(secondRand < 10){ // due to the naming of the cards
                            playerSecondCard = suits.randomElement()! + "0" + String(secondRand)
                        }
                        
                        else{
                            playerSecondCard = suits.randomElement()! + String(secondRand)
                        }
                        
                        playerScore = firstRand + secondRand
                        
                        playerThirdCard = "card_back"
                        
                    } label: {
                        Text("Start")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                }
                HStack {

                    Button {
                        //Generate a random number between 2 and 14
                        
                        // update the cards
//                        playerFirstCard = suits.randomElement()! + String(firstRand)
//                        playerSecondCard = suits.randomElement()! + String(secondRand)
//                        playerThirdCard = suits.randomElement()! + String(thirdRand)
                        
//                        let randomSuit = suits.randomElement()!
                        
                        // update the cards
                            thirdRand = Int.random(in: 2...13)
                        
                            if(thirdRand < 10){ // due to the naming of the cards
                                playerThirdCard = suits.randomElement()! + "0" + String(thirdRand)
                            }
                            
                            else{
                                playerThirdCard = suits.randomElement()! + String(thirdRand)
                            }
                            
                            playerScore += thirdRand
                            
                    
                    } label: {
                        Text("Hit")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
                    
                    
                    Button {
                        cpuScore = Int.random(in: 17...21)
                        
                        if(playerScore > cpuScore){
                            results = "Winner"
                        }
                        else{
                            results = "Loser"
                        }

                    } label: {
                        Text("Stand")
                            .font(.title)
                            .fontWeight(.semibold)
                    }
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
