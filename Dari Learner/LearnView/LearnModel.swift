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
    var actualAnswer:Int
    
    init() {
        var randomIds:[Int] = []
        
        for _ in 1 ... 4 {
            
            // - to make sure there aren't duplicates -
            var wordId:Int = Int.random(in: 0..<Words.words.count)
            while randomIds.contains(wordId){
                wordId = Int.random(in: 0..<Words.words.count)
            }
            randomIds.append(wordId)
            
            answers.append(Answer(id: wordId, isChosen: false, isAnswer: false, word: Words.words.first(where: {$0.id == wordId})!))
        }
        
        // - chooses which vocab to make the question -
        let randomAnswer = Int.random(in: 0..<4)
        answers[randomAnswer].isAnswer = true
        actualAnswer = randomAnswer
    }
    
    func getActualAnswer() -> Answer{
        return self.answers.first(where: {$0.isAnswer})!
    }
    
    func chooseAnswer(answer: Answer) -> Bool{
        
        
        print("answer chosen: \(answer)")
        
        //if choose right answer do this
        if answer.isAnswer{
            answers[actualAnswer].isChosen = true //why the fuck does this not work the other way
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
    
//    func nextQuiz(){
//        var randomIds:[Int] = []
//        
//        for _ in 1 ... 4 {
//            
//            // - to make sure there aren't duplicates -
//            var wordId:Int = Int.random(in: 0..<Words.words.count)
//            while randomIds.contains(wordId){
//                wordId = Int.random(in: 0..<Words.words.count)
//            }
//            randomIds.append(wordId)
//            
//            answers.append(Answer(id: wordId, isChosen: false, isAnswer: false, word: Words.words.first(where: {$0.id == wordId})!))
//        }
//        
//        // - chooses which vocab to make the question -
//        let randomAnswer = Int.random(in: 0..<4)
//        answers[randomAnswer].isAnswer = true
//        actualAnswer = randomAnswer
//    }
    
    struct Answer: Identifiable, Comparable{
        static func < (lhs: LearnModel.Answer, rhs: LearnModel.Answer) -> Bool {
            return lhs.word.EnglishWord < rhs.word.EnglishWord
        }
        
        static func == (lhs: LearnModel.Answer, rhs: LearnModel.Answer) -> Bool {
            return lhs.word.EnglishWord == rhs.word.EnglishWord
        }
        
        var id: Int
        var isChosen: Bool
        var isAnswer: Bool
        var word: Word
    }
}

