//
//  ContentView.swift
//  Hello World
//
//  Created by Ebru Seiwert on 4/12/24.
//

import SwiftUI

struct HelloWorldView: View {
    var body: some View {
        VStack {
            CardView(isFaceUp: true)
            CardView()
            CardView(isFaceUp: true)
            CardView()
        }
        .foregroundColor(.teal)
        .padding()
    }
}
struct CardView: View {
    var isFaceUp: Bool = false
            
        var body: some View {
            ZStack (content: {
                if isFaceUp {
                    RoundedRectangle(cornerRadius: 12).foregroundColor(.white)
                    RoundedRectangle(cornerRadius: 12).strokeBorder(lineWidth: 2)
                    Text("🌞").font(.largeTitle)
                } else {
                    RoundedRectangle(cornerRadius: 12)
                        }
            })
    }
}
#Preview {
    HelloWorldView()
}
