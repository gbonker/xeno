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
    var game = Game()
    var userAnswer: Bool?
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //updateLabels()
    }
    
    // because we want a new question every time this view appears
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if let question = questionSet.drawRandomQuestion() {
            self.question = question
            questionLabel.text = question.question
            
        }
    }
    
//    @IBAction func userAnsweredTrue() {
//        userAnswer = true
//    }
//    
//    
//    @IBAction func userAnsweredFalse() {
//        userAnswer = false
//    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showAnswerTrue" {
            let showDefinition:AnswerViewController = segue.destinationViewController as! AnswerViewController
            showDefinition.question = self.question
        }
        if segue.identifier == "showAnswerFalse" {
            let showDefinition:AnswerViewController = segue.destinationViewController as! AnswerViewController
            showDefinition.question = self.question
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

