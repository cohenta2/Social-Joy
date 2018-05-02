//
//  Question.swift
//  Social Joy
//
//  Created by Trevor A Cohen on 5/1/18.
//  Copyright © 2018 Cohen, Trevor (Genworth). All rights reserved.
//

import Foundation

class Question {
    var ques: String
    var answer: Int
    var options: [Character:String]
    
    init(ques: String, answer: Int, options: [Character:String]) {
        self.ques = ques
        self.answer = answer
        self.options = options
    }
    
    func getQuestion() -> String {
        return self.ques
    }
    
    func getAnswer() -> Int {
        return self.answer
    }
    
    func getOptions() -> [Character:String] {
        return self.options
    }
    
    func getOption(key: Character) -> String {
        return self.options[key]!
    }
    
}
