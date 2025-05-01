

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = quizBrain.quiz[quizBrain.questionNumber].text
        progressBar.progress = Float(quizBrain.questionNumber+1)/Float(quizBrain.quiz.count)
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let answerPressed = sender.currentTitle!
        
        if quizBrain.checkAnswer(answerPressed) == true
            {
            sender.backgroundColor = UIColor.green
        }
        else {
            sender.backgroundColor = UIColor.red
        }

        quizBrain.changeQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(changeUi), userInfo: nil, repeats: false)
        
    }
    
    @objc func changeUi() {
        
            questionLabel.text = quizBrain.getQuestion()
            trueButton.backgroundColor = .clear
            falseButton.backgroundColor = .clear
            progressBar.progress = quizBrain.getProgress()
        
    }
}

