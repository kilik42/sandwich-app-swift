//
//  SandwichQuizVC.swift
//  SandwichApp
//
//  Created by marvin evins on 5/22/20.
//  Copyright © 2020 websavantmedia. All rights reserved.
//

import UIKit

class SandwichQuizVC: UIViewController {
    
    let choices = [
        "what kind of sandwich you are making ",
        "Buying the Essentials",
        "Grab the Bread",
        "Apply the Condiment",
        "Lay Down the Meat",
    
    ]
    
    @IBOutlet weak var firstChoice: UITextField!
    
    @IBOutlet weak var seconcChoice: UITextField!
    
    @IBOutlet weak var thirdChoice: UITextField!
    
    @IBOutlet weak var fourthChoice: UITextField!
    @IBOutlet var fifthChoice: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
