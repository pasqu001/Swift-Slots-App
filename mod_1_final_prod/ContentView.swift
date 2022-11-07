//
//  ContentView.swift
//  mod_1_final_prod
//
//  Created by Kasey Pasqualini on 10/29/22.
//

import SwiftUI

struct ContentView: View {
    @State var credits = 2000
    @State var right = "cherry"
    @State var middle = "apple"
    @State var left = "star"
    
    
    
    var body: some View {
        
        VStack{
            
            Text("PLAY THE SLUTS")
                .font(.largeTitle)
            Spacer()
            Spacer()
            HStack{
                Text("Credits: ")
                Text(String(credits))
            }
            Spacer()
            Spacer()
            HStack{
                Image(right).resizable().frame(width: 100, height: 100)
                Image(middle).resizable().frame(width: 100, height: 100)
                Image(left).resizable().frame(width: 100, height: 100)
            }
            
            Spacer()
            
            Button {
               let  spinList = ["cherry", "apple", "star"]
                
                //update cards
                right = spinList.randomElement()!
                middle = spinList.randomElement()!
                left = spinList.randomElement()!
                
                
                if right == middle && middle == left {
                    credits+=50
                } else {
                    credits-=10
                }
                
            } label: {
                Text("Spin").fontWeight(.heavy).foregroundColor(.white)
            }.padding(.horizontal, 29.0).padding().background(Color.pink).cornerRadius(20).foregroundColor(.white)
            Spacer()
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
