//
//  game.swift
//  Xeno
//
//  Created by Gale Bonker on 12/7/15.
//  Copyright (c) 2015 Gale Bonker. All rights reserved.
//

import Foundation

class Game {
    
    var score: Int
    
    var question: Question?
    
    var userAnswer: Bool?
    
    init() {
        self.score = 0
        self.question = nil
        self.userAnswer = true
    }
    
    func calculateScore() {
        if let thisQuestion = question {
            if thisQuestion.isCorrect(self.userAnswer!) {
                self.score += 1
                println("Question is \(thisQuestion.question). you were correct.")
                println(self.score)
            } else {
                self.score += 0
                println("Question is \(thisQuestion.question). You did not answer the question correctly.")
                println(self.score)
            }
        } else {
            self.score += 0
            println("We are in the wrong place.")
            println(self.score)
        }
    }
    

    
    
}