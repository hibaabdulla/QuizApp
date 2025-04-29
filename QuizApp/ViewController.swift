

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var falseButton: UIButton!
    let quiz = [Question(text: "Eight -  Two = Six", answer: "True"),
                Question(text: "Three x Three = Nine", answer: "True"),
                Question(text: "Five + One = Four", answer: "False")]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = quiz[questionNumber].text
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let answerPressed = sender.currentTitle!
        let  correctAnswer = quiz[questionNumber].answer
        
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
            questionLabel.text = quiz[questionNumber].text
        }
        else {
            questionNumber = 0
            questionLabel.text = quiz[questionNumber].text
        }
    }
}

