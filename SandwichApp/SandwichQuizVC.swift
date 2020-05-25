//
//  SandwichQuizVC.swift
//  SandwichApp
//
//  Created by marvin evins on 5/22/20.
//  Copyright © 2020 websavantmedia. All rights reserved.
//

import UIKit

class SandwichQuizVC: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    
    let choicesPick = [
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
    
    
    @IBOutlet weak var fifthChoice: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func createChoicePicker(){
        let choice = UIPickerView()
        choice.delegate = self
        
        firstChoice.inputView = choice
        seconcChoice.inputView = choice
        thirdChoice.inputView = choice
        fourthChoice.inputView = choice
        fifthChoice.inputView = choice
        
    }
    
    

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return choicesPick.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return choicesPick[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        return
    }
}


//extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource{
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return choicesPick.count
//    }
//
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return choicesPick[row]
//    }
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        return
//    }
//
//}
