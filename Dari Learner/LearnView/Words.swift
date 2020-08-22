//
//  Word.swift
//  Dari Learner
//
//  Created by Ramon Amini on 8/15/20.
//  Copyright © 2020 Ramon Amini. All rights reserved.
//

import Foundation

class Words{
    static var words:[Word] = [Word(id: 0, EnglishWord: "Hello", DariWord: "Salaam"),Word(id: 1, EnglishWord: "Bread", DariWord: "Naan"),Word(id: 2, EnglishWord: "Thank You", DariWord: "Tashakor"),Word(id: 3, EnglishWord: "Yes", DariWord: "Baleh")]

}

struct Word: Codable, Identifiable{
    var id: Int
    var EnglishWord:String
    var DariWord:String
    
    //Do Json Stuff (Decoding/Encoding)
}
