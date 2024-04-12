//
//  ContentView.swift
//  Hello World
//
//  Created by Ebru Seiwert on 4/12/24.
//

import SwiftUI

struct HelloWorldView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
            CardView()
        }
        .foregroundColor(.teal)
        .padding()
    }
}
struct CardView: View {
    @State var isFaceUp = false
            
        var body: some View {
            ZStack {
                let base = Circle()
                
                if isFaceUp {
                    base.fill(.white)
                    base.strokeBorder(lineWidth: 2)
                    Text("🌞").font(.largeTitle)
                } else {
                    base.fill()
                        }
            }
            .onTapGesture
            {
            //  isFaceUp = !isFaceUp
                isFaceUp.toggle()
            }
        }
       
}
#Preview {
    HelloWorldView()
}
