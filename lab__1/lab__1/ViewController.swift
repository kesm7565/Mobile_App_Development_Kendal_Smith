//
//  ViewController.swift
//  lab__1
//
//  Created by Kendal Alexander Smith on 9/6/20.
//  Copyright © 2020 Kendal Alexander Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageText2: UILabel!
    @IBOutlet weak var messageText: UILabel!
    @IBOutlet weak var buttonPressed: UIButton!
    @IBOutlet weak var imageSwitch: UIImageView!
    @IBAction func imageButton(_ sender: UIButton) {
        
            if sender.tag == 1{
                imageSwitch.image = UIImage(named: "Image-1")
                messageText.text = "Skii"
            }
            else if sender.tag == 2{
                imageSwitch.image = UIImage(named: "Image-2")
                messageText.text = "Snowboard"
                
            }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

