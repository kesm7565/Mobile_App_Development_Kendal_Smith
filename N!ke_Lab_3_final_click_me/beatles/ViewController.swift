//
//  ViewController.swift
//  beatles
//
//  Created by Kendal Alexander Smith on 9/10/20.
//  Copyright © 2020 Kendal Alexander Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fontSizeText: UILabel!
    @IBOutlet weak var nikeImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var changeFontSize: UISlider!
    @IBOutlet weak var capitalSwitch: UISwitch!
    @IBOutlet weak var fontSizeSlider: UISlider!
    
    func updateImage(){
       
    }
    
    func updateCaps(){
        if capitalSwitch.isOn{
            titleLabel.text = titleLabel.text?.uppercased()
            //capitalize
        }
        else{
            titleLabel.text = titleLabel.text?.lowercased()
            //lowercase
        }
    }
    
    @IBAction func changeInfo(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0{
            nikeImage.image = UIImage(named: "Nike-2")
            titleLabel.text = "Nike 2"
            titleLabel.textColor = UIColor(red: 1.0, green: 0, blue: 0, alpha: 1.0)
           
            
            
        }
        else if sender.selectedSegmentIndex == 1{
            nikeImage.image = UIImage(named: "Nike-3")
            titleLabel.text = "Nike 3"
            titleLabel.textColor = UIColor(red: 0.0, green: 1.0, blue: 0, alpha: 1.0)
        }
        
        updateCaps()
    }
    
    @IBAction func updateFont(_ sender: UISwitch) {
        updateCaps()
    }
    @IBAction func changeFontSize(_ sender: UISlider) {
        //get new value
        let fontSize = sender.value // float
        //update text label
        fontSizeText.text=String(format: "%.0f", fontSize)
        //update font size
        let fontSizeCGFloat=CGFloat(fontSize)
        titleLabel.font=UIFont.systemFont(ofSize:fontSizeCGFloat)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


