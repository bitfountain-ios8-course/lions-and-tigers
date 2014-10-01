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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var myTiger = Tiger()
        myTiger.name = "Tigger"
        myTiger.breed = "Bengal"
        myTiger.age = 3
        myTiger.image = UIImage(named:"BengalTiger.jpg")
        
        bgImageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = "Age \(myTiger.age)"
        breedLabel.text = myTiger.breed
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonPressed(sender: UIBarButtonItem) {
    }

}

