//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Miguel Rodriguez on 1/2/26.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
