//
//  ViewController.swift
//  War
//
//  Created by Yanhua Hou on 1/25/17.
//  Copyright © 2017 Alice007. All rights reserved.
//

import UIKit

class ViewController: UIViewController { //ViewController is a subclass of UIViewController
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore=0
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore=0
    
    
    let cardNames=["card2","card3","card4","card5","card6","card7","card8","card9","card10","jack","queen","king","ace"]
    
    override func viewDidLoad() { //two methods override
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func dealTapped(_ sender: Any) {
       
        
        // print("deal tapped") //to check code is running; another way is to click the line(number on the left) to make a breakpoint; to get rid of the breakpoint is either click it again or  drag it to the blank
        
        //Randomize left number from 2 to 10
       // let leftNumber=arc4random_uniform(9)+2
        
        //set the left image
        //leftImageView.image=UIImage(named:"card\(leftNumber)")
        
        
        //Randomize left number from 0 to 12
        let leftNumber=Int(arc4random_uniform(13))
        //set the left image
        leftImageView.image=UIImage(named:cardNames[leftNumber])
        
        
       
        //Randomize right number from 2 to 10
        //let rightNumber=arc4random_uniform(9)+2
        
        //set the right image
        //rightImageView.image=UIImage(named:"card\(rightNumber)")
        
        //Randomize right number from 0 to 12
        let rightNumber:Int=Int(arc4random_uniform(13))
        //set the right image
        rightImageView.image=UIImage(named:cardNames[rightNumber])
       
        //compare the card numbers
        if leftNumber>rightNumber{
            //left card wins
            
            //increment the score
            leftScore+=1
            //update label
            leftScoreLabel.text=String(leftScore)
        }
        else if leftNumber==rightNumber{
            //it's a tie
        }
        else{
            //right card wins
            
            //increment the score
            rightScore+=1
            
            //update the score
            rightScoreLabel.text=String(rightScore)
        }
        
        
    }//another way to add connect is to write code here and then right click items on the panel in the middle then drag arrow to the view controller(yellow button)


}

