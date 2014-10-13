//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by Gustavo Cunha on 9/26/14.
//  Copyright (c) 2014 Gustavo Cunha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bgImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    
    var tigers:[Tiger] = []
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var firstTiger = Tiger()
        firstTiger.name = "Tigger"
        firstTiger.breed = "Bengal"
        firstTiger.age = 3
        firstTiger.image = UIImage(named:"BengalTiger.jpg")
        
        var secondTiger = Tiger()
        secondTiger.name = "Tigress"
        secondTiger.breed = "Indochinese Tiger"
        secondTiger.age = 2
        secondTiger.image = UIImage(named:"IndochineseTiger.jpg")

        var thirdTiger = Tiger()
        thirdTiger.name = "Jacob"
        thirdTiger.breed = "Malayan Tiger"
        thirdTiger.age = 4
        thirdTiger.image = UIImage(named:"MalayanTiger.jpg")
        
        tigers.append(thirdTiger)

        var fourthTiger = Tiger()
        fourthTiger.name = "Spar"
        fourthTiger.breed = "Siberian Tiger"
        fourthTiger.age = 5
        fourthTiger.image = UIImage(named:"SiberianTiger.jpg")
        
        tigers = [firstTiger, secondTiger, thirdTiger, fourthTiger]
        
        bgImageView.image = tigers[currentIndex].image
        nameLabel.text = tigers[currentIndex].name
        ageLabel.text = "Age \(tigers[currentIndex].age)"
        breedLabel.text = tigers[currentIndex].breed
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonPressed(sender: UIBarButtonItem) {
        var index:Int
        
        do{
            index = Int(arc4random_uniform(UInt32(tigers.count)))
        }while currentIndex == index
    
        currentIndex = index
    
        let tiger = tigers[index]

        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: { () -> Void in
            self.bgImageView.image = tiger.image
            self.nameLabel.text = tiger.name
            self.ageLabel.text = "Age \(tiger.age)"
            self.breedLabel.text = tiger.breed
        }) { (finished: Bool) -> Void in
            
        }
    }

}

