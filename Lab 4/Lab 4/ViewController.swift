//
//  ViewController.swift
//Lab 4
//
//  Created by Kendal Alexander Smith on 10/5/20.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var checkAmount: UITextField!
    
    @IBOutlet weak var totalDuePerPerson: UILabel!
    @IBOutlet weak var tipDue: UILabel!
    @IBOutlet weak var totalDue: UILabel!
    @IBOutlet weak var peopleStepper: UIStepper!
    @IBOutlet weak var tipPercent: UITextField!
    @IBOutlet weak var peopleLabel: UILabel!
    @IBAction func updatePeople(_ sender: UIStepper) {
        if peopleStepper.value == 1{
            peopleLabel.text = "1 Person"
        }
        else if peopleStepper.value == 2{
            peopleLabel.text = "2 Personas"
        }
        else if peopleStepper.value == 3{
            peopleLabel.text = "3 Mensen"
        }
        else if peopleStepper.value == 4{
            peopleLabel.text = "4 People (too many)"
        }
        else if peopleStepper.value == 5{
            peopleLabel.text = "5 People (comon now)"
        }
        else{
            peopleLabel.text = String(format: "%.0f", peopleStepper.value) + " people smh"
        }
        calculateTipTotal()
    }
    
    func calculateTipTotal(){
        var amount:Float
        var pct:Float
        
        if checkAmount.text!.isEmpty{
            amount = 0.0
        }
        else{
            amount = Float(checkAmount.text!)!
        }
        if tipPercent.text!.isEmpty{
            pct = 0.0
        }
        else{
            pct = Float(tipPercent.text!)!/100
        }
        
        let numberOfPeople = peopleStepper.value
        let tip = amount+pct
        let total = amount + tip
        var personTotal : Float = 0.0
        if numberOfPeople > 0 {
            personTotal = total / Float(numberOfPeople)
        }
        else{
            let alert = UIAlertController(title:"Bruh Come On", message: "You know you can't have 0 people at a resturant even if you go by yourself", preferredStyle: UIAlertController.Style.alert)
            let cancelAction = UIAlertAction(title: "Cancel", style:UIAlertAction.Style.cancel, handler:nil)
            alert.addAction(cancelAction)
            let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: {action in
                self.peopleStepper.value = 1
                self.peopleLabel.text? = "1 person"
                self.calculateTipTotal()
            })
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        }
        
        
        let currencyFormatter = NumberFormatter()
        currencyFormatter.numberStyle=NumberFormatter.Style.currency
        tipDue.text = currencyFormatter.string(from: NSNumber(value:tip))
        totalDue.text = currencyFormatter.string(from: NSNumber(value: personTotal))
        totalDuePerPerson.text = currencyFormatter.string(from:NSNumber (value:personTotal))
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        calculateTipTotal()
    }
    override func viewDidLoad() {
        checkAmount.delegate=self
        tipPercent.delegate=self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

