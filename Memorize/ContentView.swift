//
//  ContentView.swift
//  Memorize
//
//  Created by Artem Khlevchuk on 06.05.2024.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻", "🕷", "🎃", "😈", "🎃"]
   
    var body: some View {
        HStack{
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
            
        
    
        }
        .foregroundColor(.indigo)
        .padding()
    }
}

#Preview {
    ContentView()
}


struct CardView: View {
    let content: String
    @State var isFaceUp: Bool = false   // add @State when you need have immutible var like mutation in func
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius:12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
                
            }
        }
        .onTapGesture {
            isFaceUp.toggle()   // change to oposite value like isFaceUp = !isFaceUp
            
        }
    }
}
