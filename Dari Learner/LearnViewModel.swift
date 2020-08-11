//
//  LearnViewModel.swift
//  Dari Learner
//
//  Created by Ramon Amini on 8/10/20.
//  Copyright © 2020 Ramon Amini. All rights reserved.
//

import Foundation

class LearnViewModel{
    private(set) var Words:[Word]
    
    init(){
        Words = [Word(id: 0, EnglishWord: "Hello", DariWord: "Salom")] //grab all data from API
    }
    
    struct Word: Codable, Identifiable{
        var id: Int
        
        var EnglishWord:String
        var DariWord:String
    }
}
