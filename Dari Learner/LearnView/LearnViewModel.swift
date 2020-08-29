//
//  LearnViewViewModel.swift
//  Dari Learner
//
//  Created by Ramon Amini on 8/15/20.
//  Copyright © 2020 Ramon Amini. All rights reserved.
//

import SwiftUI

class LearnViewModel: ObservableObject{
    @Published private var learnModel:LearnModel = LearnModel()
    
    // MARK: - Acess to the model
    var answers: [LearnModel.Answer]{
        learnModel.answers
    }
    
    // MARK: - Intent(s)
    func chooseAnswer(answer: LearnModel.Answer) -> Bool {
        return learnModel.chooseAnswer(answer: answer)
    }
    
    func getActualAnswer() -> LearnModel.Answer{
        return learnModel.getActualAnswer()
    }
    
    func createQuiz(){
        learnModel = LearnModel()
    }
    
}
