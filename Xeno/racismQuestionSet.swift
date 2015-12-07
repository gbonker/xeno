//
//  racismQuestionSet.swift
//  Xeno
//
//  Created by Gale Bonker on 12/2/15.
//  Copyright (c) 2015 Gale Bonker. All rights reserved.
//

import Foundation

class RacismQuestionSet {
    
    var racismQuestions: [Question]
    
    init() {
        let racismQuestionsData = [
            "Racism consists of ideologies and practices that seek to justify, or cause, the unequal distribution of privileges or rights among different racial groups." : true,
            "White privilege is a term that applies to people of visible minority status who try to pass as “white." : true,
            "Internalized dominance refers to the ways that white people learn they are normal, and do not think of themselves as “other.”" : true,
            "There is no difference between individual and institutional discrimination." : false,
            "Polite racism is racism that is thinly veiled by seemingly harmless compliments which are really more like insults." : true,
            "People who engage in polite racism are often being intentionally racist." : false,
            "In American society today, it is polite to pretend that race doesn't exist or, in other words, be 'color blind' in regards to race." : false,
            "Privilege is defined as 'the principle or condition of enjoying special rights or immunities.'" : true,
            "Another term for majority group is dominant group, whereas another term for minority group is subordinate group." : true,
            "Prejudice refers to a set of negative attitudes toward members of another group simply because they are members of that group." : true,
            "Racism comes from expulsion and persecution." : false,
            "The process of social interaction that contains specific messages and practices concerning the nature of one's racial or ethnic status is referred to as racial socialization." : true,
            "A functionalist concept that emphasizes the coexistence of diverse racialized/ethnic groups with separate identities and cultures within a society is ethnic pluralism." : true,
            "The theory of racial formation is based on the assumption that the government substantially defines racial and ethnic relations." : true,
            "According to interactionists, prejudice and discrimination are learned, and what is learned cannot be unlearned." : false,
            "Ethnocentrism is the assumption that one's own group and way of life are inferior to all others." : false,
            "Stereotypes are overgeneralizations about the appearance, behaviour, or other characteristics of all members of a group." : true,
            "It's okay to rub a black person's hair." : false,
            "The Black Lives Matter movement aims to suppress white people, since black people have been oppressed by white men in America for so long." : false,
            "Since the Civil Rights movement has been over for more than 50 years now, the United States has largely decreased the effects of institutionalized racism." : false,
            "In the past 150 years or so, the confederate flag has been associated with ideas of white supremacy, racism, a history of slavery, segregation, and southern heritage." : true,
            "It is okay to dress up as a generic, stereotypical person from a culture that is not your own on Halloween as long as you are not doing so maliciously." : false,
            "In institutions of higher education, affirmative action refers to admission policies that provide equal access to education for those groups that have been historically excluded or underrepresented, such as minorities." : true,
            "White student unions and other groups that respond to safe spaces being made for people of color are criticized because society already affirms their existence, but people of color create these spaces because there is a need for them to escape from prejudice." : true,
            "It is acceptable to call someone the N word if you are friends with them, regardless of your or their race." : false
        ]
    
        // Now create a simple way to loop through the dictionary and create a Question object
        // for each and add that object to the `racismQuestions` array we created as an instance variable.
        // This can be done in one line using a closure and I'd encourage you to do so.
        
        racismQuestions = map(racismQuestionsData) {Question(question: $0, answer: $1) }
        
    }
    
    func drawRandomQuestion() -> Question? {
        if racismQuestions.isEmpty {  // shouldn't ever really be an issue; just being safe...
            return nil
        } else {
            // return a question object from the questions collection
            return racismQuestions[Int(arc4random_uniform(UInt32(racismQuestions.count)))]
        }
    }
    
}