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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        ruleslabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
     ruleslabel.text = rulesLabelText 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

    @IBAction func guessButtonpressed(_ sender: Any) {
    }
    
}

