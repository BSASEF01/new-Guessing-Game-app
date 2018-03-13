//
//  ViewController.swift
//  new guessing game app
//
//  Created by Bersabeh Asefa on 3/12/18.
//  Copyright © 2018 Bersabeh Asefa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userGuessField: UITextField!
    @IBOutlet weak var userFeedBackLabel: UILabel!
    @IBOutlet weak var ruleslabel: UILabel!
   
    var randomNumber = Int(arc4random_uniform(100))
    
    var rulesLabelText = """
              ********RULES********
          Rule 1. Guess a num,ber between 0 and 100
          Rule 2. you have 5 tries to guess the number
          Rule 3. You will be give hints

"""
    
    var guesses = 5
    var userguess = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        ruleslabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
     ruleslabel.text = rulesLabelText 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func guessButtonpressed(_ sender: Any) {
   
        var guess = Int(userGuessField.text!)!
        if guess < randomNumber {
            userFeedBackLabel.text = "your guess was low try again"
        }  else if guess > randomNumber {
            userFeedBackLabel.text = "your guess was higher try again"
        }else{
            userFeedBackLabel.text = "you win🤩"
}

      }
 



}
