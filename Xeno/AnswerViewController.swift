//
//  AnswerViewController.swift
//  Xeno
//
//  Created by Gale Bonker on 12/7/15.
//  Copyright (c) 2015 Gale Bonker. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    var question: Question?
    var game = Game()
    var userAnswer: Bool?
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //game.calculateScore()
        updateLabels()
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        // we need to safely unpack the question and display the data, if present
        if let thisQuestion = question {
            //game!.question = thisQuestion
            //game!.userAnswer = userAnswer
            questionLabel.text = thisQuestion.question
            
            
            if thisQuestion.isCorrect(true) { // if the user answered true and the actual answer is true
                answerLabel.text = "True"
            } else {
                answerLabel.text = "False"
            }
            //game!.calculateScore()
            updateLabels()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showRacismViewController" {
            let showRacism:RacismViewController = segue.destinationViewController as! RacismViewController
            showRacism.game = self.game
        }
        if segue.identifier == "showSexismViewController" {
            let showSexism:SexismViewController = segue.destinationViewController as! SexismViewController
            showSexism.game = self.game
        }
        if segue.identifier == "showHomotransphobiaViewController" {
            let showHomotransphobia:HomotransphobiaViewController = segue.destinationViewController as! HomotransphobiaViewController
            showHomotransphobia.game = self.game
        }
        if segue.identifier == "showReligiocentrismViewController" {
            let showReligiocentrism:ReligiocentrismViewController = segue.destinationViewController as! ReligiocentrismViewController
            showReligiocentrism.game = self.game
        }
        if segue.identifier == "showAbleismViewController" {
            let showAbleism:AbleismViewController = segue.destinationViewController as! AbleismViewController
            showAbleism.game = self.game
        }

    }
    
    
    func updateLabels() {
        scoreLabel.text = String(game.score)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
