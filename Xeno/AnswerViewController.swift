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
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // we need to safely unpack the question and display the data, if present
        if let question = question {
            questionLabel.text = question.question
            if question.isCorrect(true) {
                answerLabel.text = "True"
            } else {
                answerLabel.text = "False"
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
