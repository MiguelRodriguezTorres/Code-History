//
//  QuestionView.swift
//  Code History
//
//  Created by Miguel Rodriguez on 1/1/26.
//

import SwiftUI

struct QuestionView: View {
    
    @EnvironmentObject var viewModel: GameViewModel // new line
    let question: Question
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
                .padding()
            Spacer()
            HStack {
                ForEach(0..<question.possibleAnswers.count, id: \.self) { answerIndex in Button(action: {
                    print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                    viewModel.makeGuess(atIndex: answerIndex)
                }) {
                    ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        .background(viewModel.color(forOptionIndex: answerIndex))
                    }
                .disabled(viewModel.guessWasMade) // disable button after a guess was made using guessWasMade
                }
            }
            
            if viewModel.guessWasMade {
                Button(action: {
                    viewModel.displayNextScreen()
                }) {
                    BottomTextView(str: "Next")
                }
            }
        }
    }
}

// add sample paramaters to preview
#Preview {
    QuestionView(question: Game().currentQuestion)
        .environmentObject(GameViewModel())
}
