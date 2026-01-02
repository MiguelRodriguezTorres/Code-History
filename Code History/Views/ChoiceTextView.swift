//
//  ChoiceTextView.swift
//  Code History
//
//  Created by Miguel Rodriguez on 12/22/25.
//

import SwiftUI

struct ChoiceTextView: View {
    // properties
    let choiceText: String
    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(GameColor.accent, width: 4)
    }
}

#Preview {
    ChoiceTextView(choiceText: "Choice Text!") // Add the choiceText argument
}
