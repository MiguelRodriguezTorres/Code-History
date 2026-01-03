//
//  Question.swift
//  Code History
//
//  Created by Miguel Rodriguez on 12/22/25.
//

import Foundation

// Question struct
struct Question: Hashable { // Add Hashable Confirmance
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(
            questionText: "Who invented the World Wide Web?",
            possibleAnswers: [
                "Steve Jobs",
                "Linus Torvalds",
                "Bill Gates",
                "Tim Berners-Lee"
             ],
             correctAnswerIndex: 3 // Tim Berners-Lee
        ),
        Question(
            questionText: "What was the first object oriented programming language?",
            possibleAnswers: [
                "Simula",
                "Python",
                "Swift",
                "C"
             ], correctAnswerIndex: 0 // Simula
        ),
        Question(
            questionText: "Which programming language was first released as a commercial product by Apple?",
            possibleAnswers: [
                "Objective‑C",
                "Swift",
                "Ruby",
                "Python"
            ],
            correctAnswerIndex: 0   // Objective‑C
        ),
        Question(
            questionText: "Which language introduced the concept of 'packages' as a first‑class module system in 2009?",
            possibleAnswers: [
                "Java",
                "Go",
                "Python",
                "Ruby"
            ],
            correctAnswerIndex: 1   // Go
        ),
        Question(
            questionText: "Which language introduced the first major version of a type‑inferred, functional programming style on mainstream computers?",
            possibleAnswers: [
                "Lisp",
                "ML",
                "C#",
                "JavaScript"
            ],
            correctAnswerIndex: 1   // ML
        ),
        Question(
            questionText: "Which language was the first to use a virtual machine as its primary execution model?",
            possibleAnswers: [
                "Fortran",
                "Java",
                "Python",
                "C++"
            ],
            correctAnswerIndex: 1   // Java
        ),
        Question(
            questionText: "Which insect was responsible for the first computer \"bug\" that caused a malfunction in an early electromechanical computer?",
            possibleAnswers: [
                "A moth",
                "An ant",
                "A beetle",
                "A fly"
            ],
            correctAnswerIndex: 0   // A moth
        ),
        Question(
            questionText: "Who led the software engineering team that developed the flight‑control system for NASA’s Apollo missions?",
            possibleAnswers: [
                "Grace Hopper",
                "Ada Lovelace",
                "Margaret Hamilton",
                "Barbara Liskov"
            ],
            correctAnswerIndex: 2   // Margaret Hamilton
        ),
        Question(
            questionText: "Which company first released a commercially available 8‑bit microprocessor?",
            possibleAnswers: [
                "Intel",
                "MOS Technology",
                "Motorola",
                "Zilog"
            ],
            correctAnswerIndex: 1   // MOS Technology – the 6502
        ),
        Question(
            questionText: "What was the original name of the programming language now known as JavaScript?",
            possibleAnswers: [
                "Mocha",
                "LiveScript",
                "JScript",
                "ECMAScript"
            ],
            correctAnswerIndex: 1   // LiveScript
        )
    ]
}
