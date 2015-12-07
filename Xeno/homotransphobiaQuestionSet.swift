//
//  homotransphobiaQuestionSet.swift
//  Xeno
//
//  Created by Gale Bonker on 12/2/15.
//  Copyright (c) 2015 Gale Bonker. All rights reserved.
//

import Foundation

class HomotransphobiaQuestionSet {
    
    var homotransphobiaQuestions: [Question]
    
    init() {
        let homotransphobiaQuestionsData = [
            "Homophobia is a dislike of or prejudice against homosexual people." : true,
            "Transphobia is a dislike of or prejudice against transgender people." : true,
            "An ally is an exclusively heterosexual and cisgender person who supports and honors gender and sexuality diversity." : false,
            "Nearly 9 out of 10 LGBT students have experienced harassment at school in the past year." : true,
            "If schools have gender and sexuality alliances (GSAs), students are more likely to experience harassment and assault from peers, faculty and staff than students who attand schools without GSAs." : false,
            "More than one out of 10 LGBT adults has experienced housing or employment discrimination because of their gender identity or sexual orientation." : true,
            "Hiding one's sexual orientation and/or coping with orientation-based victimization are correlated with substance abuse, suicide and depression." : true,
            "LGB young people from families with no or low levels of rejection are at significantly lower risk than those from highly rejecting families reated to depression suicidality, illicit substance abuse, and risky sexual behavior." : true,
            "Teachers who recognized that LGBT youth often feel unsafe at school are more likely to take action when they heard homophobic or transphobic language." : true,
            "Sexual minority students in schools with support groups were less likely to report dating violence, incidents of victimization at school, skipping school due to fear, or multiple recent suicide attempts." : true,
            "Although there is a high incidence of victimization of LGBT youth irrespective of region or locale, urban schools are the most unsafe for LGBT students." : false,
            "Less than a third of both students and parents reported that their school curriculum included representations of LGBT people, history or events." : true,
            "54% of all cases of HIV infection or AIDS among young people aged 13-24 during 2003-2006 were from male-to-male sexual contact, while 34% were from heterosexual contact." : true,
            "The first recorded same-sex marriages were recorded in 27 BCE in the Roman Empire under the reign of Augustus." : true,
            "The first recorded same-sex couple in history was Khnumhotep and Niankhkhnum, two ancient Egyptian royal servants. Their tomb was built in during the 5th dynasty in the 25th century B.C." : true,
            "In 1952, Christine Jorgensen was the first American to whose gender confirmation surgery became public. For many, she was the first transgender person in the media." : true,
            "The modern LGBT movement began in 1969, when a police raid on the Stonewall Inn in New York City lead to four days of battle between police and LGBT-identified people." : true,
            "In 1997, Harvey Milk won a seat as the San Francisco city supervisor, making him the first openly gay man in the United States to win an election for public office." : true,
            "'Gay-Related Immunodeficiency' was the original name for AIDS. The name was changed to AIDS at the end of 1982." : true,
            "Matthew Shepherd, a gay Wyoming college student, was brutally beaten by two young men, tied to a fence and left overnight to die in 1998." : true,
            "New Jersey was the first state to legalize same-sex marriage." : false,
            "Don't Ask, Don't Tell, a program that prevented soldiers from being openly gay in the military, was repealed on September 20th, 2011." : true,
            "Androgynous describes people who are neither masculine or feminine, or people who do not 'appear' to be male or female because they either exhibit both masculinity and femininity or neither." : true,
            "Bisexual - a person who is attracted to only cisgender men and cisgender women." : false,
            "Pansexual - a person who has the potential to be attracted to anyone on the gender spectrum." : true,
            "Asexual - a person who does not experience sexual attraction." : true,
            "Aromantic - a person who does not experience romantic attraction." : true,
            "If someone is not open about their gender identity or sexual orientation, they are said to be 'in the closet' or 'closeted.'" : true,
            "Coming out refers to the process that someone goes through in order to acknowledge, accept, and appreciate their sexual orientation or gender identity." : true,
            "Coming out is a lifelong process, starting with coming out to oneself and then to others, if the person wishes to." : true,
            "Sex is synonymous to gender." : false,
            "Sexual attraction is the same thing as romantic attraction." : false,
            "Terms such as dyke, fag and faggot are reclaimed by some as terms of pride. Therefore, it is okay for someone who does not identify as lesbian or gay to use these terms freely." : false,
            "Gender identity has never been recorded as being established before age 6." : false,
            "Gender expression is everything we do to communicate our gender identity to others, including our clothing, hairstyles, mannerisms, way of speaking, roles we take in interactions, etc." : true,
            "The acronmyn LGBTQIAP+ stands for Lesgian, Gay, Bisexual, Transgender, Queer/Questioning, Asexual, Intersex, Pansexual, and the + stands for other identities that exist within the community." : true,
            "Intersex refers to a person who was born with sex organs of more than one sex, or someone born with ambiguous or otherwise unidentifiable genitalia." : true,
            "Biologically, a male is a person whose chromosomes are XX, XXX, or X_." : false,
            "Biologically, a female is a person whose chromosomes are XY or XXY." : false,
            "Heterocentrism is the assumption that everyone is heterosexual unless otherwise stated." : true,
            "Cisnormativity is the assumption that everyone is cisgender unless otherwise stated." : true,
            "Queer was once a derogatory term, but it has been reclaimed by many nowadays to mean a word that is inclusive of anyone that is not cisgender and/or heterosexual." : true,
            "The rainbow is the official pride symbol for LGBTQ+ people. The colors (red, orange, yellow, green, blue, and purple) represent diversity within the community." : true,
            "Genderqueer is a term for someone who rejects the gender binary and its roles and language." : true,
            "Two-spirited is a Native American term to refer to people with characteristics of multiple genders." : true,
            "Gay people molest children at far higher rates than heterosexual people." : false,
            "Same sex parents harm children because children need a female and male role model in their lives." : false,
            "People become gay because they were sexually abused as children or there was a deficiency in role modeling by their parents." : false,
            "Gay people do not live nearly as long as straight people." : false,
            "Gay men controlled the Nazi Party and helped to orchestrate the Holocaust." : false,
            "Hate crime laws will lead to jailing of pastors who criticize homosexuality and the legalization of practices such as beastiality and necrophilia." : false,
            "Allowing gay people to serve openly in the military damages the armed forces." : false,
            "Gay people are more prone to be mentally ill and to abuse drugs and alcohol." : false,
            "No one is born gay or transgender." : false,
            "Gay people can choose to not be gay." : false,
            "Bisexual - a person who is attracted to two or more genders." : true,
            "Bisexual people are just confused, therefore their identity is invalid." : false,
            "Bisexual people are equally attracted to both sexes, and often have concurrent lovers of both sexes." : false,
            "Bisexual people are promiscuous, prone to cheating, and could never commit to an exclusive relationship." : false,
            "The majority of gay and lesbian people do not really identify with the word 'homosexual,' so you should not use this word to refer to them." : true,
            "You should use gender neutral language as much as you can in order to break the gender binary." : true,
            "Same-sex marriage became nationally legalized in the United States on June 22, 2015.": true,
            "Now that marriage equality is a reality in America, we don't have to worry about that issue or any other LGBTQ+-related issues anymore.": true
        ]
        
        // Now create a simple way to loop through the dictionary and create a Question object
        // for each and add that object to the `homotransphobiaQuestions` array we created as an instance variable.
        // This can be done in one line using a closure and I'd encourage you to do so.
        
        homotransphobiaQuestions = map(homotransphobiaQuestionsData) {Question(question: $0, answer: $1) }
        
    }
    
    func drawRandomQuestion() -> Question? {
        if homotransphobiaQuestions.isEmpty {  // shouldn't ever really be an issue; just being safe...
            return nil
        } else {
            // return a question object from the questions collection
            return homotransphobiaQuestions[Int(arc4random_uniform(UInt32(homotransphobiaQuestions.count)))]
        }
    }
    
}