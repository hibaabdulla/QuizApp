

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var optionOneButton: UIButton!
    @IBOutlet weak var optionTwoButton: UIButton!
    @IBOutlet weak var optionThreeButton: UIButton!
    
    var quizBrain = QuizBrain()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = quizBrain.quiz[quizBrain.questionNumber].text
        progressBar.progress = Float(quizBrain.questionNumber+1)/Float(quizBrain.quiz.count)
        optionOneButton.setTitle(quizBrain.quiz[quizBrain.questionNumber].answer[0], for: .normal)
        optionTwoButton.setTitle(quizBrain.quiz[quizBrain.questionNumber].answer[1], for: .normal)
        optionThreeButton.setTitle(quizBrain.quiz[quizBrain.questionNumber].answer[2], for: .normal)
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {

        let answerPressed = sender.titleLabel?.text
        
        if quizBrain.checkAnswer(answerPressed!) == true
            {
            sender.backgroundColor = UIColor.green
            scoreLabel.text = "Score = \(quizBrain.score)"
        }
        else {
            sender.backgroundColor = UIColor.red
        }
        quizBrain.changeQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(changeUi), userInfo: nil, repeats: false)
        
    }
    
    @objc func changeUi() {
        questionLabel.text = quizBrain.getQuestion()
        optionOneButton.backgroundColor = .clear
        optionTwoButton.backgroundColor = .clear
        optionThreeButton.backgroundColor = .clear
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score = \(quizBrain.score)"
        optionOneButton.setTitle(quizBrain.quiz[quizBrain.questionNumber].answer[0], for: .normal)
        optionTwoButton.setTitle(quizBrain.quiz[quizBrain.questionNumber].answer[1], for: .normal)
        optionThreeButton.setTitle(quizBrain.quiz[quizBrain.questionNumber].answer[2], for: .normal)
        
    }
}

