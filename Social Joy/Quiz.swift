//
//  Quiz.swift
//  Social Joy
//
//  Created by Cohen, Trevor (Genworth) on 5/1/18.
//  Copyright © 2018 Cohen, Trevor (Genworth). All rights reserved.
//

import Foundation

class Quiz {
    
    var questions = [Question]()
    init () {
        self.getJson()
    }
    
    func getJson() {
        let urlString = "https://www.people.vcu.edu/~ebulut/jsonFiles/quiz1.json"
        let url = URL(string: urlString)
        let session = URLSession.shared
        let task = session.dataTask(with: url!, completionHandler: { (data, response, error) in
            
            if let result = data {
                print("inside get JSON")
                print(result)
                do {
                    let json =  try JSONSerialization.jsonObject(with: result, options: .allowFragments)
                    
                    if let dictionary = json as? [String:Any] {
                        self.buildQuestions(dictionary: dictionary)
                    }
                }
                catch {
                    print("Error")
                }
            }
            
        })
        task.resume()
    }
    
    func buildQuestions(dictionary: [String:Any]) {
//        for ques in dictionary {
//            if let correctAns = ques["correctOption"] == Character
//            let number = ques["number"]
//        }
    }
}
