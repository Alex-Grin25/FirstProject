//
//  QuestionFormTableViewCell.swift
//  FirstProject
//
//  Created by ALEKSANDR GRIGOREV on 08.04.2021.
//

import UIKit

class QuestionFormTableViewCell: UITableViewCell {

    @IBOutlet weak var wrong2Answer: UITextView!
    
    @IBOutlet weak var question: UITextView!
    @IBOutlet weak var wrong3Answer: UITextView!
    @IBOutlet weak var wrong1Answer: UITextView!
    @IBOutlet weak var rightAnswer: UITextView!
   
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
