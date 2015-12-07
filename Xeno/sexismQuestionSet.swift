//
//  sexismQuestionSet.swift
//  Xeno
//
//  Created by Gale Bonker on 12/2/15.
//  Copyright (c) 2015 Gale Bonker. All rights reserved.
//

import Foundation

class SexismQuestionSet {
    
    var sexismQuestions: [Question]
    
    init() {
        let sexismQuestionsData = [
            "Sexism is prejudice or discrimination based on a person's sex." : true,
            "Sexism can affect any gender, but it is particularly documented as affecting men." : false,
            "Sexism has been linked to stereotypes and gender roles, and may include the belief that one sex is intrinsically superior to another." : true,
            "Extreme sexism can foster sexual harassment, rape, sexual violence and domestic violence." : true,
            "The witch hunts of the 15th and 18th centuries were fueled partly by sexism." : true,
            "Women first gained the right to vote in the United States in 1930." : false,
            "53% of teenage girls are unhappy with their bodies. This number increases to 78% by age 17." : true,
            "The media does not play a large role in objectifying women, since it usually puts confident women in the spotlight." : false,
            "In the United States, there is no sales tax on pads or tampons." : false,
            "As of 2011, 65% of women and girls have an eating disorder." : true,
            "Rates of depression among women and girls have remained the same from 2000 to 2010." : false,
            "Catcalling is okay if you know the person." : false,
            "Catcalling is making a whistle, shout, or comment of a sexual nature to a woman passing by." : true,
            "Sexual assault and domestic violence usually happen because a woman was wearing something that indicated that she wanted to have sex, when in reality this was not the case." : false,
            "Sexual assault and domestic violence happens because one partner wants to demonstrate power and control over the other." : true,
            "Body-shaming (ie. fat shaming or skinny shaming) and slut-shaming can be detrimental to women, and can cause them to develop low self-esteem, low self-respect, self-mutilative behaviors, or eating disorders." : true,
            "When companies Photoshop pictures of women in order to make them look more 'ideal,' they are appropriating an impossible standard of beauty that causes women to feel inferior and ashamed because they do not conform to that impossible standard." : true,
            "When men are shown photos of women who have been Photoshopped, they get conditioned to think that that's what women should look like, and therefore judge real women more harshly." : true,
            "On average, women in the U.S. spend $12,000 - $15,000 on beauty products and salon services per year. This is oftentimes more money than they will spend on their education per year." : true,
            "According to the American Psychological Association, self-objectification has become a national epidemic that has negative consequences for women, including feelings of shame, anxiety and disgust." : true,
            "Feminism is the movement that advocates political, economical, and social equality of the sexes." : true,
            "Feminism advocates that women should be superior to men." : false,
            "Women make up 51% of the U.S. population, yet only comprise 17% of Congress." : true,
            "67 other countries have had a female president or prime minister. The US is not one of them." : true,
            "On average, women earn 80 cents for every dollar men earn." : false,
            "The United States and Papa New Guinea are the only two countries in the world that do not mandate paid family leave. This contributes to the wage gap in America between men and women." : true,
            "Only 16% of protagonists in films are female." : true,
            "Even when protagonists in films are female, they are often looking for validation through finding a love interest." : true,
            "Men are socialized to be powerful and in control by the media." : true,
            "A patriarchal society values women as child bearers, so once women reach an age where that is no longer possible, they are viewed as far less valuable." : true,
            "Women and girls are portrayed in news stories about 40% of the time." : false,
            "The representation of women in the media is heavily tied to capitalism." : true,
            "Oftentimes, men are not taught how to express emotion in healthy ways." : true,
        ]
        
        // Now create a simple way to loop through the dictionary and create a Question object
        // for each and add that object to the `sexismQuestions` array we created as an instance variable.
        // This can be done in one line using a closure and I'd encourage you to do so.
        
        sexismQuestions = map(sexismQuestionsData) {Question(question: $0, answer: $1) }
        
    }
    
    func drawRandomQuestion() -> Question? {
        if sexismQuestions.isEmpty {  // shouldn't ever really be an issue; just being safe...
            return nil
        } else {
            // return a question object from the questions collection
            return sexismQuestions[Int(arc4random_uniform(UInt32(sexismQuestions.count)))]
        }
    }
    
}