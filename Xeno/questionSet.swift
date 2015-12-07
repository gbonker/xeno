//
//  questionSet.swift
//  Xeno
//
//  Created by Gale Bonker on 12/7/15.
//  Copyright (c) 2015 Gale Bonker. All rights reserved.
//

import Foundation

class QuestionSet {
    
    let questions: [Question]
    
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
    
    let religiocentrismQuestionsData = [
        "Anti-Semitism comes from colonization and slavery." : false,
        "Christian conformity refers to a pattern of assimilation whereby members of subordinate racial-ethnic groups are expected to conform to the culture of the dominant (white) Anglo-Saxon population." : false,
        "Religiocentrism is defined as the conviction that a person's own religion is more important or superior to other religions." : true,
        "A religion is an organized collection of beliefs, cultural systems, and world views that relate humanity to an order of existence." : true,
        "Many religions have narratives, symbols, and sacred histories that aim to explain the meaning of life, the origin of life, or the Universe." : true,
        "From their religious beliefs, people may derive morality, ethics, religious laws, or a preferred lifestyle." : true,
        "Many religions may have organized behaviors, clergy, a definition of what constitutes adherence or membership, holy places, and scriptures." : true,
        "The practice of a religion may include rituals, sermons, commemoration or veneration of a deity, gods, or goddesses, sacrifices, festivals, feasts, trances, initiations, funerary services, matrimonial services, meditation, prayer, music, art, dance, public service, or other aspects of human culture." : true,
        "Mythology has little to nothing to do with religion." : false,
        "Abrahamic religions are polytheistic religions which believe they descend from Abraham." : false,
        "Christianity is the oldest Abrahamic religion." : false,
        "The Torah is the foundational text of the Hindu religion." : false,
        "Christianity is based on the life and teachings of Jesus of Nazareth (1st century) as presented in the New Testament of the Bible." : true,
        "Judaism is based on oral tradition." : true,
        "The Christian faith is essentially faith in Jesus as the Christ, the Son of God, and as Savior and Lord." : true,
        "Protestants separated from the Catholic church in the 16th century, thus forming an array of denominations in and of themselves." : true,
        "Islam is based on the Quran, one of the holy books considered by Muslims to be revealed by God, and on the teachings of the Islamic prophet Muhammad, a major political and religious figure of the 7th century CE." : true,
        "Islam is the most widely practiced religion of Southeast Asia, North Africa, Western Asia, and Central Asia, while Muslim-majority countries also exist in parts of South Asia, Sub-Saharan Africa, and Southeast Europe." : true,
        "Shia Islam is the largest denomination within Islam." : false,
        "Indian religions are sometimes classified as the dharmic religions." : true,
        "Some concepts most Hindus share in common are karma, caste, reincarnation, mantras, yantras, and darśana." : true,
        "Hinduism is the most ancient of still-active religions, with origins dating as far back as prehistoric times." : true,
        "Hinduism is a monolithic religion, containing dozens of intertwined philosophies that one must accept as a whole." : false,
        "Jainism is an ancient Indian religion that prescribes a path of non-violence for all forms of living beings in this world." : true,
        "Buddhism was founded by Siddhattha Gotama in the 6th century BCE." : true,
        "Buddhists generally agree that Gotama aimed to help sentient beings end their suffering (dukkha) by understanding the true nature of phenomena, thereby escaping the cycle of suffering and rebirth (saṃsāra), that is, achieving nirvana." : true,
        "Sikhism is a monotheistic religion founded on the teachings of Guru Nanak and ten successive Sikh gurus in 15th century Punjab." : true,
        "Sikhism is the fifth-largest organized religion in the world, with approximately 30 million Sikhs." : true,
        "East Asian religions (also known as Far Eastern religions or Taoic religions) consist of several religions of East Asia which make use of the concept of Tao (in Chinese) or Dō (in Japanese or Korean)." : true,
        "Taoism and Confucianism, as well as Korean, Vietnamese, and Japanese religion influenced by Chinese thought." : true,
        "In north Africa, traditional religions have included Berber religion, ancient Egyptian religion, and Waaq." : true,
        "West African religions include Akan religion, Dahomey (Fon) mythology, Efik mythology, Odinani of the Igbo people, Serer religion, and Yoruba religion." : true,
        "Bushongo mythology, Mbuti (Pygmy) mythology, Lugbara mythology, Dinka religion, and Lotuko mythology come from central Africa." : true,
        "Southern African traditions include Akamba mythology, Masai mythology, Malagasy mythology, San religion, Lozi mythology, Tumbuka mythology, and Zulu mythology." : true,
        "There are notable African diasporic religions practiced in the Americas, such as Santeria, Candomble, Vodun, Lucumi, Umbanda, and Macumba." : true
        
        
    ]
    
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
    
    init(choice: String) {
        // put this data into categories and adds the questions to the question sets
        var questionData: Dictionary = [String : Bool]()
        if choice == "racism" {
            questionData = racismQuestionsData
        } else if choice == "sexism" {
            questionData = sexismQuestionsData
        } else if choice == "homotransphobia" {
            questionData = homotransphobiaQuestionsData
        } else if choice == "religiocentrism" {
            questionData = religiocentrismQuestionsData
        } else {
            questionData = ableismQuestionsData
        }
        
        questions = map(questionData) { Question(question: $0, answer: $1) }
    }
    
    
    func drawRandomQuestion() -> Question? {
        if questions.isEmpty {  // shouldn't ever really be an issue; just being safe...
            return nil
        } else {
            // return a question object from the questions collection
            return questions[Int(arc4random_uniform(UInt32(questions.count)))]
        }
    }
    
}