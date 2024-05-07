//
//  ContentView.swift
//  Memorize
//
//  Created by Artem Khlevchuk on 06.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView()
            CardView()
            CardView()
            CardView()
        
    
        }
        .foregroundColor(.indigo)
        .padding()
    }
}

#Preview {
    ContentView()
}


struct CardView: View {
   @State var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius:12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                base.fill()
                
            }
        }
        .onTapGesture {
            isFaceUp.toggle()   // change to oposite value like isFaceUp = !isFaceUp
            
        }
    }
}
