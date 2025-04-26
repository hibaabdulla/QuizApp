

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var falseButton: UIButton!
    let quiz = ["Four + Two = Six", "Three x Three = Nine", "Five - One = Four", "Ten - Five = Five", "Seven + Three = Ten"]
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = quiz[questionNumber]
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        changeQuestion()
    }
    
    func changeQuestion() {
        if questionNumber+1 < quiz.count {
            questionNumber = (questionNumber + 1)
            questionLabel.text = quiz[questionNumber]
        }
    }
}

