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
    var actualAnswer:Answer
    
    //    init() //grab all data from API
    init() {
        var id:Int = 0
        for word in Words.words{
            answers.append(Answer(id: id, isChosen: false, isAnswer: false, word: word))
            id+=1
        }
        answers[0].isAnswer = true
        self.actualAnswer = answers[0]
    }
    
    func chooseAnswer(answer: Answer) -> Bool{
        print("answer chosen: \(answer)")
        
        //if choose right answer do this
        if answer.isAnswer{
            print("Chosen and right")
            return true
        }
        else if !answer.isAnswer{
            print("Chosen but wrong")
            return false
        }
        else{
            print("WTF HAPPENED")
            return false
        }
    }
    
    struct Answer: Identifiable {
        var id: Int
        var isChosen: Bool
        var isAnswer: Bool
        var word: Word
    }
    
}

