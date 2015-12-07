//
//  question.swift
//  Xeno
//
//  Created by Gale Bonker on 12/2/15.
//  Copyright (c) 2015 Gale Bonker. All rights reserved.
//

import Foundation

//var question: String = ""
//var answer: String = ""
//var isCorrect: Bool = true //whether you got a question right or wrong

struct Question {
    let question: String
    let answer: Bool
    init(question: String, answer: Bool ) {
        self.question = question
        self.answer = answer
    }

    func isCorrect(userAnswer: Bool) -> Bool {
        return (userAnswer == answer)
    }

}