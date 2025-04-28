

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var falseButton: UIButton!
    let quiz = [["Eight -  Two = Six", "True"], ["Three x Three = Nine", "True"], ["Five + One = Four", "False"]]
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = quiz[questionNumber][0]
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let answerPressed = sender.currentTitle!
        let  correctAnswer = quiz[questionNumber][1]
        
        if answerPressed == correctAnswer {
            print("Correct!")
        } else {
            print("Incorrect!")
        }
        
        changeQuestion()
    }
    
    func changeQuestion() {
        if questionNumber+1 < quiz.count {
            questionNumber = (questionNumber + 1)
            questionLabel.text = quiz[questionNumber][0]
        }
        else {
            questionNumber = 0
            questionLabel.text = quiz[questionNumber][0]
        }
    }
}

