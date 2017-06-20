//
//  flash cards.swift
//  Flash Cards
//
//  Created by iD Student on 6/20/17.
//  Copyright © 2017 iD Student. All rights reserved.
//

import Foundation

class Flashcard{
    var question : String
    var anwser : String
    var options : [String]
    
    init (_ question : String, _ options : [String]){
        self.question = question
        self.options = options
        self.anwser = options[0]
    }
}

class CardCollection{
    public static var instance : CardCollection = CardCollection()
    public private (set) var cards : [Flashcard]
    public private (set) var currentIndex : Int
   
    public var currentCard : Flashcard{
        get { return cards[currentIndex] }
    }
    private init (){
        cards = [
            Flashcard ( "Test Question",   ["True", "False"]),
            Flashcard ( "What is the world most played sport", ["Soccer", "Basketball"]),
            Flashcard ( "When did Cristopher Columbuys arrived to America", ["1492", "1524"]),
            Flashcard ( "Which basketball player has the record on socring the most points in a single nba game", ["Will Chamberlain", "Michael Jordan", "Kobe Bryant", "Larry bird"]),
            Flashcard ( "Who is the country with the most world cups", ["Brazil", "Germany"]),
            Flashcard ( "Which team has the most champions leagues", ["Real Madrid", "FC Barcelona"])
        ]
        currentIndex = 0
    }
    
    public func nextquestion(){
        currentIndex += 1
        if(currentIndex >= cards.count){
            currentIndex = 0
        }
    }
        public func checkAnswer (selectedAnswer : Int)-> Bool{
            var isCorrect = currentCard.options[selectedAnswer] == currentCard.anwser
            return isCorrect
    }
       
}
