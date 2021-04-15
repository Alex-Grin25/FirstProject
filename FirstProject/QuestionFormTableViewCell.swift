//
//  QuestionFormTableViewCell.swift
//  FirstProject
//
//  Created by ALEKSANDR GRIGOREV on 08.04.2021.
//

import UIKit

enum QuestionTextViewType: Int {
    case Question = 0
    case RightAnswer = 1
    case WrongAnswer1 = 2
    case WrongAnswer2 = 3
    case WrongAnswer3 = 4
}

class QuestionFormTableViewCell: UITableViewCell {

    @IBOutlet weak var wrong2AnswerTextView: UITextView!
    @IBOutlet weak var questionTextView: UITextView!
    @IBOutlet weak var wrong3AnswerTextView: UITextView!
    @IBOutlet weak var wrong1AnswerTextView: UITextView!
    @IBOutlet weak var rightAnswerTextView: UITextView!
   
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(question: Question) {
        self.questionTextView.tag = QuestionTextViewType.Question.rawValue
        self.questionTextView.text = question.question
        
        self.rightAnswerTextView.tag = QuestionTextViewType.RightAnswer.rawValue
        self.rightAnswerTextView.text = question.rightAnswer
        
        self.wrong1AnswerTextView.tag = QuestionTextViewType.WrongAnswer1.rawValue
        self.wrong1AnswerTextView.text = question.wrongAnswer1
        
        self.wrong2AnswerTextView.tag = QuestionTextViewType.WrongAnswer2.rawValue
        self.wrong2AnswerTextView.text = question.wrongAnswer2
        
        self.wrong3AnswerTextView.tag =  QuestionTextViewType.WrongAnswer3.rawValue
        self.wrong3AnswerTextView.text = question.wrongAnswer3
    }

}
