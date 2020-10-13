//
//  ViewController.swift
//  Roll The Dice
//
//  Created by Kendal Alexander Smith on 10/7/20.
//

import UIKit

class ViewController: UIViewController {
    
    //the number of dice slider number
    @IBOutlet weak var numberOfDice: UILabel!
    //number of faces on each of these dice value
    @IBOutlet weak var numberOfFaces: UILabel!
    //the function which takes the value of the number of faces slider as a sender
    @IBOutlet weak var facesSlider: UISlider!
    //the function that takes the number of dice being rolled slider as a sender
    @IBOutlet weak var diceSlider: UISlider!
    //the image of dice with one dot on its face
    @IBOutlet weak var diceImageOne: UIImageView!
    //the image of dice with two dot on its face
    @IBOutlet weak var diceImageTwo: UIImageView!
    //the image of dice with three dot on its face
    @IBOutlet weak var diceImageThree: UIImageView!
    //the image of dice with four dot on its face
    @IBOutlet weak var diceImageFour: UIImageView!
    //the image of dice with five dot on its face
    @IBOutlet weak var diceImageFive: UIImageView!
    //the image of dice with six dot on its face
    @IBOutlet weak var diceImageSix: UIImageView!
    //the image of dice with seven dot on its face
    @IBOutlet weak var diceImageSeven: UIImageView!
    //the image of dice with eight dot on its face
    @IBOutlet weak var diceImageEight: UIImageView!
    //the image of dice with nine dot on its face
    @IBOutlet weak var diceImageNine: UIImageView!
    
    //https://stackoverflow.com/questions/24172180/swift-creating-an-array-of-uiimage
    //this is an array that holds all my images of the dice as well as the placeholder for these dice
    var diceImages: [UIImage] = [
        UIImage(named: "one.png")!,
        UIImage(named: "two.png")!,
        UIImage(named: "three.png")!,
        UIImage(named: "four.png")!,
        UIImage(named: "five.png")!,
        UIImage(named: "six.png")!,
        UIImage(named: "seven.png")!,
        UIImage(named: "eight.png")!,
        UIImage(named: "nine.png")!,
        UIImage(named: "dicePlaceHolder1.png")!
        
    ]
    //this function takes in the tag the button sends as the user presses it.
    @IBAction func rollDiceButton(_ sender: UIButton) {
    //this converts the slider values into intergers
        let numberOfFacesDisplayedInt = Int(facesSlider.value)
        let numberOfDiceDisplayedInt = Int(diceSlider.value)
        //if the button is pressed...
        if sender.tag == 1{
            //if the number of dice slider is equal to 1...
            if numberOfDiceDisplayedInt == 1{
                //https://developer.apple.com/documentation/swift/int/2995648-random
                //a random number between 0 and the number of faces the user selected is chosen. All other dice outside of the users selected range are not selected yet.
                let faces = Int.random(in: 0..<numberOfFacesDisplayedInt)
                diceImageOne.image = diceImages[faces]
                diceImageTwo.image = diceImages[9]
                diceImageThree.image = diceImages[9]
                diceImageFour.image = diceImages[9]
                diceImageFive.image = diceImages[9]
                diceImageSix.image = diceImages[9]
                diceImageSeven.image = diceImages[9]
                diceImageEight.image = diceImages[9]
                diceImageNine.image = diceImages[9]
                
            }
            else if numberOfDiceDisplayedInt == 2{
                //https://developer.apple.com/documentation/swift/int/2995648-random
                let faces = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces1 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                diceImageOne.image = diceImages[faces]
                diceImageTwo.image = diceImages[faces1]
                diceImageThree.image = diceImages[9]
                diceImageFour.image = diceImages[9]
                diceImageFive.image = diceImages[9]
                diceImageSix.image = diceImages[9]
                diceImageSeven.image = diceImages[9]
                diceImageEight.image = diceImages[9]
                diceImageNine.image = diceImages[9]
                
            }
            else if numberOfDiceDisplayedInt == 3{
                //https://developer.apple.com/documentation/swift/int/2995648-random
                let faces = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces1 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces2 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                diceImageOne.image = diceImages[faces]
                diceImageTwo.image = diceImages[faces1]
                diceImageThree.image = diceImages[faces2]
                diceImageFour.image = diceImages[9]
                diceImageFive.image = diceImages[9]
                diceImageSix.image = diceImages[9]
                diceImageSeven.image = diceImages[9]
                diceImageEight.image = diceImages[9]
                diceImageNine.image = diceImages[9]
               
            }
            else if numberOfDiceDisplayedInt == 4{
                //https://developer.apple.com/documentation/swift/int/2995648-random
                let faces = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces1 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces2 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces3 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                diceImageOne.image = diceImages[faces]
                diceImageTwo.image = diceImages[faces1]
                diceImageThree.image = diceImages[faces2]
                diceImageFour.image = diceImages[faces3]
                diceImageFive.image = diceImages[9]
                diceImageSix.image = diceImages[9]
                diceImageSeven.image = diceImages[9]
                diceImageEight.image = diceImages[9]
                diceImageNine.image = diceImages[9]
               
            }
            else if numberOfDiceDisplayedInt == 5{
                //https://developer.apple.com/documentation/swift/int/2995648-random
                let faces = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces1 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces2 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces3 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces4 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                diceImageOne.image = diceImages[faces]
                diceImageTwo.image = diceImages[faces1]
                diceImageThree.image = diceImages[faces2]
                diceImageFour.image = diceImages[faces3]
                diceImageFive.image = diceImages[faces4]
                diceImageSix.image = diceImages[9]
                diceImageSeven.image = diceImages[9]
                diceImageEight.image = diceImages[9]
                diceImageNine.image = diceImages[9]
                
            }
            else if numberOfDiceDisplayedInt == 6{
                //https://developer.apple.com/documentation/swift/int/2995648-random
                let faces = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces1 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces2 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces3 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces4 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces5 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                diceImageOne.image = diceImages[faces]
                diceImageTwo.image = diceImages[faces1]
                diceImageThree.image = diceImages[faces2]
                diceImageFour.image = diceImages[faces3]
                diceImageFive.image = diceImages[faces4]
                diceImageSix.image = diceImages[faces5]
                diceImageSeven.image = diceImages[9]
                diceImageEight.image = diceImages[9]
                diceImageNine.image = diceImages[9]
                
            }
            else if numberOfDiceDisplayedInt == 7{
                //https://developer.apple.com/documentation/swift/int/2995648-random
                let faces = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces1 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces2 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces3 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces4 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces5 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces6 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                diceImageOne.image = diceImages[faces]
                diceImageTwo.image = diceImages[faces1]
                diceImageThree.image = diceImages[faces2]
                diceImageFour.image = diceImages[faces3]
                diceImageFive.image = diceImages[faces4]
                diceImageSix.image = diceImages[faces5]
                diceImageSeven.image = diceImages[faces6]
                diceImageEight.image = diceImages[9]
                diceImageNine.image = diceImages[9]
                
            }
            else if numberOfDiceDisplayedInt == 8{
                //https://developer.apple.com/documentation/swift/int/2995648-random
                let faces = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces1 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces2 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces3 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces4 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces5 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces6 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces7 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                diceImageOne.image = diceImages[faces]
                diceImageTwo.image = diceImages[faces1]
                diceImageThree.image = diceImages[faces2]
                diceImageFour.image = diceImages[faces3]
                diceImageFive.image = diceImages[faces4]
                diceImageSix.image = diceImages[faces5]
                diceImageSeven.image = diceImages[faces6]
                diceImageEight.image = diceImages[faces7]
                diceImageNine.image = diceImages[9]
                
            }
            else if numberOfDiceDisplayedInt == 9{
                //https://developer.apple.com/documentation/swift/int/2995648-random
                let faces = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces1 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces2 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces3 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces4 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces5 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces6 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces7 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                let faces8 = Int.random(in: 0..<numberOfFacesDisplayedInt)
                diceImageOne.image = diceImages[faces]
                diceImageTwo.image = diceImages[faces1]
                diceImageThree.image = diceImages[faces2]
                diceImageFour.image = diceImages[faces3]
                diceImageFive.image = diceImages[faces4]
                diceImageSix.image = diceImages[faces5]
                diceImageSeven.image = diceImages[faces6]
                diceImageEight.image = diceImages[faces7]
                diceImageNine.image = diceImages[faces8]
            }
        }
            }
    @IBAction func numberOfDiceSlider(_ sender: UISlider) {
        //get new value
        let numberOfDiceRolled = sender.value
        //update the number of dice label
        numberOfDice.text=String(format: "%.0f", numberOfDiceRolled)
    }
    @IBAction func numberOfFacesSlider(_ sender: UISlider) {
        //get new value
        let numberOfFacesDisplayed = sender.value
        //update the number of faces label
        numberOfFaces.text=String(format: "%.0f", numberOfFacesDisplayed)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

