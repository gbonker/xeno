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
    
    init() {
        self.score = 0
        self.question = nil
    }
    
    func calculateScore() {
        if let thisQuestion = question {
            if thisQuestion.isCorrect(true) {
                self.score += 1
            }
        } else {
            self.score = 0
        }
    }
    

    
    
}