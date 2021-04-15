//
//  FileManager.swift
//  FirstProject
//
//  Created by ALEKSANDR GRIGOREV on 15.04.2021.
//

import Foundation

//var questions : [Question] = Storage.loadQuestions()

class Storage {
    
    static let filePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first?.appending("/questions.plist")
    
    static func loadQuestions() -> [Question] {
        if let path = filePath {
           let fileURL = URL(fileURLWithPath: path)
           if let data = try? Data(contentsOf: fileURL),
           let questions = try? PropertyListDecoder().decode([Question].self, from: data) {
                return questions
           }
        }
        return []
    }
    
    static func saveQuestions(_ questions:[Question]) {
        if let path = filePath {
            let fileURL = URL(fileURLWithPath: path)
            try? PropertyListEncoder().encode(questions).write(to: fileURL)
        }
    }
}
