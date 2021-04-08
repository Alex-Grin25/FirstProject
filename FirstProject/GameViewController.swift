//
//  GameViewController.swift
//  FirstProject
//
//  Created by ALEKSANDR GRIGOREV on 06.04.2021.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var questionTextView: UITextView!
    @IBOutlet var answerButtons: [UIButton]!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
   
    let x = Question(question: "Какой возможности лишен крупье казино?", wrongAnswer1: "пригладить рукой волосы", wrongAnswer2: "снять пылинку с жилета", wrongAnswer3: "поправить галстук", rightAnswer: "достать платок из кармана")
        
        
        let answers = [x.wrongAnswer1,x.wrongAnswer2,x.wrongAnswer3,x.rightAnswer].shuffled()
        questionTextView.text =  x.question
        
        for index in answers.indices {
            answerButtons[index].setTitle(answers[index], for: .normal)
        }
    
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
