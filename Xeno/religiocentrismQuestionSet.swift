//
//  religiocentrismQuestionSet.swift
//  Xeno
//
//  Created by Gale Bonker on 12/2/15.
//  Copyright (c) 2015 Gale Bonker. All rights reserved.
//

import Foundation

class ReligiocentrismQuestionSet {
    
    var religiocentrismQuestions: [Question]
    
    init() {
        let religiocentrismQuestionsData = [
            "Anti-Semitism comes from colonization and slavery." : false,
            "Christian conformity refers to a pattern of assimilation whereby members of subordinate racial-ethnic groups are expected to conform to the culture of the dominant (white) Anglo-Saxon population." : false,
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
        // for each and add that object to the `religiocentrismQuestions` array we created as an instance variable.
        // This can be done in one line using a closure and I'd encourage you to do so.
        
        religiocentrismQuestions = map(religiocentrismQuestionsData) {Question(question: $0, answer: $1) }
        
    }
    
    func drawRandomQuestion() -> Question? {
        if religiocentrismQuestions.isEmpty {  // shouldn't ever really be an issue; just being safe...
            return nil
        } else {
            // return a question object from the questions collection
            return religiocentrismQuestions[Int(arc4random_uniform(UInt32(religiocentrismQuestions.count)))]
        }
    }
    
}