//
//  ContentView.swift
//  BlackJack21
//
//  Created by Arshdeep Badhan on 2022-11-10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background").resizable().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack{
                    Spacer()
                    
                    Image("back")
                    
                    Spacer()
                    
                    Image("back")
                    
                    Spacer()
                    }
                
                Spacer()
                
                Image("dealbutton")
                
                Spacer()
                
                HStack(){
                    Spacer()
                    VStack{
                        Text("Player").font(.largeTitle).foregroundColor(Color.white).padding(.bottom)
                        Text("0").font(.largeTitle).foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(.largeTitle).foregroundColor(Color.white).padding(.bottom)
                        Text("0").font(.largeTitle).foregroundColor(Color.white)
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
