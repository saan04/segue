//
//  ViewController.swift
//  firstapp
//
//  Created by Saanvi Nair on 17/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen: Double = 0
    var previousNumber: Double = 0
    var performMathOp = false
    var operation = 0
    
    @IBOutlet weak var calclabel: UILabel!
    
    
    @IBAction func operatorbtn(_ sender: UIButton) {
        if calclabel.text != "" && sender.tag != 16 && sender.tag != 15{
                   previousNumber = Double(calclabel.text!)!
                   if sender.tag == 11{//addition
                       calclabel.text = "+"
                   }else if sender.tag == 12{//subtraction
                       calclabel.text = "-"
                   }else if sender.tag == 13{//division
                       calclabel.text = "*"
                   }else if sender.tag == 14{//multiplication
                       calclabel.text = "/"
                   }
                   operation = sender.tag
                   performMathOp = true
               }else if sender.tag == 15{//equal to
                   if operation == 11{
                       calclabel.text = String(previousNumber + numberOnScreen)
                   }else if operation == 12{
                       calclabel.text = String(previousNumber - numberOnScreen)
                   }else if operation == 13{
                       calclabel.text = String(previousNumber * numberOnScreen)
                   }else if operation == 14{
                       calclabel.text = String(previousNumber / numberOnScreen)
                   }
               }else if sender.tag == 16{//clear
                   calclabel.text = ""
                   previousNumber = 0
                   numberOnScreen = 0
                   operation = 0
               }
    }
    
    
    @IBAction func operandbtn(_ sender: UIButton) {
        
        if performMathOp == true{
                    calclabel.text = String(sender.tag-1)
                    numberOnScreen = Double(calclabel.text!)!
                    performMathOp = false
        }else{
                    calclabel.text = calclabel.text! + String(sender.tag-1)
                    numberOnScreen = Double(calclabel.text!)!
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

