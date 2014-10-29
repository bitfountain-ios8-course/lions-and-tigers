//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by Gustavo Cunha on 9/26/14.
//  Copyright (c) 2014 Gustavo Cunha. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    var age = 0
    var name = ""
    var breed = ""
    var image:UIImage = UIImage(named:String())!
    
    func chuff() {
        println("Tiger: Chuff Chuff")
    }
}