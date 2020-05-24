//
//  DirectionsViewController.swift
//  SandwichApp
//
//  Created by marvin evins on 5/22/20.
//  Copyright © 2020 websavantmedia. All rights reserved.
//

import UIKit
import AVKit
class DirectionsViewController: UIViewController, AVPlayerViewControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func videoPopUpBtn(_ sender: Any) {
        
        guard let url = URL(string: "https://www.youtube.com/watch?v=YeEe8QasV5s")else {return }
        
        
        
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
