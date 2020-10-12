//
//  Word.swift
//  Dari Learner
//
//  Created by Ramon Amini on 8/15/20.
//  Copyright © 2020 Ramon Amini. All rights reserved.
//

import Foundation

class Words{
//    static var words:[Word] = {
//        var request = URLRequest(url: URL("http://127.0.0.1:5000/words/all"))
//        request.httpMethod = "GET"
//        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//
//        let session = URLSession.shared
//        let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
//            do {
//                let json = try JSONSerialization.jsonObject(with: data!) as! Dictionary<String, AnyObject>
//                if let respond = json.values.first {
//                    DispatchQueue.main.async {
//                        //it not a float and it will be a lot more objects
//                        //also i need to only get 4 objects instead of all of them
//                        //so i need to move the 4 random id logiv from LearnModel in here
//                        let temp = respond as! String
//                        let tempFloat = Float(temp)
//                        self.label.text = String(format: "%.2f", tempFloat!)
//                    }
//                }
//
//            } catch {
//                print("error")
//            }
//        })
//
//        task.resume()
//        }
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
