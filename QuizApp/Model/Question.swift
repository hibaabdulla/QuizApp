//
//  Question.swift
//  QuizApp
//
//  Created by Hiba Abdulla on 4/28/25.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
