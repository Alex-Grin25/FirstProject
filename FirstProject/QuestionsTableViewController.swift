//
//  QuestionsTableViewController.swift
//  FirstProject
//
//  Created by ALEKSANDR GRIGOREV on 06.04.2021.
//

import UIKit

class QuestionsTableViewController: UITableViewController, UITextViewDelegate {
    
    var questions: [Question] = Storage.loadQuestions()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    @IBAction func cancelButtonTap(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func saveButtonTap(_ sender: Any) {
        // save questions to file
        Storage.saveQuestions(questions)
    }
    
    @IBAction func addButtonTap(_ sender: Any) {
        // save
        let a = Question(question: "Enter question", wrongAnswer1: "Enter wrong answer", wrongAnswer2: "Enter wrong answer", wrongAnswer3: "Enter wrong answer", rightAnswer: "Enter right answer")
        questions.append(a)
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return questions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newQuestionCell", for: indexPath) as! QuestionFormTableViewCell

        cell.configure(question: questions[indexPath.row])

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
    
    // MARK: - Text view delegate
    
    func textViewDidChange(_ textView: UITextView) {
        if let cell = textView.superview?.superview as? QuestionFormTableViewCell,
           let indexPath = tableView.indexPath(for: cell) {
            // save question
            switch QuestionTextViewType(rawValue: textView.tag) {
            case .WrongAnswer3:
                questions[indexPath.row].wrongAnswer3 = textView.text;
                break;
            case .WrongAnswer2:
                questions[indexPath.row].wrongAnswer2 = textView.text;
                break;
            case .WrongAnswer1:
                questions[indexPath.row].wrongAnswer1 = textView.text;
                break;
            case .RightAnswer:
                questions[indexPath.row].rightAnswer = textView.text;
                break;
            default:
                questions[indexPath.row].question = textView.text;
                break;
            }
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
