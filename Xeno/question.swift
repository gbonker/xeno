//
//  question.swift
//  Xeno
//
//  Created by Gale Bonker on 12/2/15.
//  Copyright (c) 2015 Gale Bonker. All rights reserved.
//

import Foundation

var question: String = ""
var answer: String = ""
var isCorrect: Bool = true //whether you got a question right or wrong

struct Question {
    let question, answer: String
    let isCorrect: Bool
    init(question: String, answer: String) {
        self.question = question
        self.answer = answer
        self.isCorrect = isCorrect;
    }
}