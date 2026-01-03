//
//  ContentView.swift
//  Code History
//
//  Created by Miguel Rodriguez on 11/30/25.
//

import SwiftUI

struct GameView: View {
    // instance of Question
    let question = Question(
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswerIndex: 2)
    
    // main color for background - Refactor with viewModel
    @StateObject var viewModel = GameViewModel() // Updated
    
    // body property of ContentView struct
    var body: some View {
        NavigationStack {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    Text(viewModel.questionProgressText)
                        .font(.callout)
                        .multilineTextAlignment(.leading)
                        .padding()
                    QuestionView(question: viewModel.currentQuestion)
                }
            }
            .foregroundStyle(.white) // foregroundColor will be deprecated - use foregroundStyle
            .navigationBarHidden(true) // Hide the navigation bar (e.g. back button)
            .environmentObject(viewModel) // new line
            /* .navigationDestination(isPresented: $viewModel.gameIsOver) {
                ScoreView(
                    viewModel: ScoreViewModel(
                        correctGuesses: viewModel.correctGuesses,
                        incorrectGuesses: viewModel.incorrectGuesses
                    )
                )
            } */
            .background(
                NavigationLink(
                    destination: ScoreView(
                        viewModel: ScoreViewModel(
                            correctGuesses: viewModel.correctGuesses,
                            incorrectGuesses: viewModel.incorrectGuesses
                        )
                    ),
                    isActive: .constant(viewModel.gameIsOver),
                    label: {
                        EmptyView()
                    }
                )
            )
        }
    }
}

#Preview {
    GameView()
}
