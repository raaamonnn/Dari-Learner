//
//  Word.swift
//  Dari Learner
//
//  Created by Ramon Amini on 8/15/20.
//  Copyright © 2020 Ramon Amini. All rights reserved.
//

import Foundation

class Words{
    static var words:[Word] = [Word(id: 0, EnglishWord: "Hello", DariWord: "Salaam"),Word(id: 1, EnglishWord: "Bread", DariWord: "Naan"),Word(id: 2, EnglishWord: "Thank You", DariWord: "Tashakor"),Word(id: 3, EnglishWord: "Yes", DariWord: "Baleh"), Word(id: 4, EnglishWord: "a", DariWord: "a"), Word(id: 5, EnglishWord: "b", DariWord: "b"), Word(id:6, EnglishWord: "c", DariWord: "c"), Word(id: 7, EnglishWord: "d", DariWord: "d")]
    
}

struct Word: Codable, Identifiable{
    var id: Int
    var EnglishWord:String
    var DariWord:String
    
    init(id: Int, EnglishWord: String, DariWord:String)
    {
        self.id = id
        self.EnglishWord = EnglishWord
        self.DariWord = DariWord
    }
    //Do Json Stuff (Decoding/Encoding)
}
