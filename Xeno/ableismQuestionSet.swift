//
//  ableismQuestionSet.swift
//  Xeno
//
//  Created by Gale Bonker on 12/2/15.
//  Copyright (c) 2015 Gale Bonker. All rights reserved.
//

import Foundation

class AbleismQuestionSet {
    
    var ableismQuestions: [Question]
    
    init() {
        let ableismQuestionsData = [
            "rails generate scaffold ModelName" : true,
            "rails destroy scaffold ModelName" : true,
            "rails server" : true,
            "rails console" : true,
            "rake test:units" : true,
            "rake -T" : true,
            "rake db:create" : true,
            "rake db:migrate" : true,
            "rake db:drop" : true,
            "rake db:reset" : true,
            "rake db:rollback" : true,
            "rake doc:app" : true,
            "gem list" : true,
            "gem server" : true,
            "bundle install" : true,
            "rake log:clear" : true,
            "rake routes" : true,
            "rake tmp:clear" : true,
            "rake test:benchmark" : true
        ]
        
        // Now create a simple way to loop through the dictionary and create a Question object
        // for each and add that object to the `ableismQuestions` array we created as an instance variable.
        // This can be done in one line using a closure and I'd encourage you to do so.
        
        ableismQuestions = map(ableismQuestionsData) {Question(question: $0, answer: $1) }
        
    }
    
    func drawRandomQuestion() -> Question? {
        if ableismQuestions.isEmpty {  // shouldn't ever really be an issue; just being safe...
            return nil
        } else {
            // return a question object from the questions collection
            return ableismQuestions[Int(arc4random_uniform(UInt32(ableismQuestions.count)))]
        }
    }
    
}