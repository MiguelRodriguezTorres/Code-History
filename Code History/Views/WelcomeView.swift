//
//  WelcomeView.swift
//  Code History
//
//  Created by Miguel Rodriguez on 12/30/25.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        NavigationStack { // NavigationView Deprecated
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Select the correct answer to the following questions.")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                        
                    }
                    Spacer()
                    NavigationLink(destination: GameView(), label: {
                        BottomTextView(str: "Okay, let's go!")
                    })
                }.foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    WelcomeView()
}
