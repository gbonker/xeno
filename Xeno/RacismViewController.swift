//
//  RacismViewController.swift
//  Xeno
//
//  Created by Gale Bonker on 12/2/15.
//  Copyright (c) 2015 Gale Bonker. All rights reserved.
//

import UIKit

class RacismViewController: UIViewController {

    let questionSet = QuestionSet(choice: "racism")
    var question: Question?
    var game: Game!
    var userAnswer: Bool?
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // We want a new question every time this view appears
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if game == nil {
            game = Game()
        }
        if let question = questionSet.drawRandomQuestion() {
            self.question = question
            questionLabel.text = question.question
            updateLabels()
            
        }
    }
    
    @IBAction func userAnsweredTrue() {
        userAnswer = true
        game.question = self.question
        game.userAnswer = true
        game.calculateScore()
    }
    
    
    @IBAction func userAnsweredFalse() {
        userAnswer = false
        game.question = self.question
        game.userAnswer = false
        game.calculateScore()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "racismShowAnswerTrue" {
            let showAnswer:AnswerViewController = segue.destinationViewController as! AnswerViewController
            showAnswer.question = self.question
            showAnswer.game = self.game
            showAnswer.userAnswer = userAnswer
        }
        if segue.identifier == "racismShowAnswerFalse" {
            let showAnswer:AnswerViewController = segue.destinationViewController as! AnswerViewController
            showAnswer.question = self.question
            showAnswer.game = self.game
            showAnswer.userAnswer = userAnswer
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateLabels() {
        scoreLabel.text = String(game.score)
    }

}

