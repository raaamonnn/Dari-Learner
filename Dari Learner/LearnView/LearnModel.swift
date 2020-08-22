//
//  LearnViewModel.swift
//  Dari Learner
//
//  Created by Ramon Amini on 8/10/20.
//  Copyright © 2020 Ramon Amini. All rights reserved.
//

import Foundation

class LearnModel{
    var answers:[Answer] = []
    
//    init() //grab all data from API
    init() {
        var id:Int = 0
        for word in Words.words{
            answers.append(Answer(id: id, isChosen: false, isAnswer: false, word: word))
            id+=1
        }
        answers[0].isAnswer = true
    }
    
    func chooseAnswer(answer: Answer) {
        print("answer chosen: \(answer)")
        
        //if choose right answer do this
        if answer.isChosen && answer.isAnswer{
            print("Chosen and right")
        }
        else if answer.isChosen && !answer.isAnswer{
            print("Chosen but wrong")
        }
        else{
            print("WTF HAPPENED")
        }
    }
    
    struct Answer: Identifiable {
        var id: Int
        var isChosen: Bool
        var isAnswer: Bool
        var word: Word
    }

}

