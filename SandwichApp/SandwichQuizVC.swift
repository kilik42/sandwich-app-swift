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
        "choice of sandwich you are making",
        "Buying the Essentials",
        "Grab the Bread",
        "Apply the Condiment",
        "Lay Down the Meat",
    
    ]
    
    var selectedChoice:String?
    
    @IBOutlet weak var firstChoice: UITextField!
    
    @IBOutlet weak var seconcChoice: UITextField!
    
    @IBOutlet weak var thirdChoice: UITextField!
    
    @IBOutlet weak var fourthChoice: UITextField!
    
    
    @IBOutlet weak var fifthChoice: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createChoicePicker1()
        
        createChoicePicker2()
        createChoicePicker3()
        createChoicePicker4()
        createChoicePicker5()
        createToolBar()
        // Do any additional setup after loading the view.
    }
    
    func createChoicePicker1(){
        let choice = UIPickerView()
        choice.delegate = self
        
        firstChoice.inputView = choice
        
    }
    
    func createChoicePicker2(){
           let choice = UIPickerView()
           choice.delegate = self
           
           
           seconcChoice.inputView = choice
           
       }
    func createChoicePicker3(){
           let choice = UIPickerView()
           choice.delegate = self
           
          
           thirdChoice.inputView = choice
       
       }
    
    func createChoicePicker4(){
           let choice = UIPickerView()
           choice.delegate = self
           
           
           fourthChoice.inputView = choice
         
       }
    
    func createChoicePicker5(){
           let choice = UIPickerView()
           choice.delegate = self
           
           
           fifthChoice.inputView = choice
       }
    
    
    func createToolBar(){
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(dismissKeyboard))
        
        toolBar.setItems([doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        firstChoice.inputAccessoryView = toolBar
        seconcChoice.inputAccessoryView = toolBar
        thirdChoice.inputAccessoryView = toolBar
        fourthChoice.inputAccessoryView = toolBar
        fifthChoice.inputAccessoryView = toolBar
        
    }
    
   @objc func dismissKeyboard(){
        view.endEditing(true)
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
        selectedChoice = choicesPick[row]
//        firstChoice.text = selectedChoice
//        secondChoice.text = selectedChoice
//        thirdChoice.text = selectedChoice
//        fourthChoice.text = selectedChoice
//        fifthChoice.text = selectedChoice
        if(firstChoice.isFirstResponder){
            firstChoice.text = selectedChoice
        }
        else if (seconcChoice.isFirstResponder){
            seconcChoice.text = selectedChoice
        }
        else if (thirdChoice.isFirstResponder){
                   thirdChoice.text = selectedChoice
               }
        else if (fourthChoice.isFirstResponder){
                   fourthChoice.text = selectedChoice
               }
        else if (fifthChoice.isFirstResponder){
                   fifthChoice.text = selectedChoice
               }
        
        
    }
    
    
    
    @IBAction func submitBtnAction(_ sender: Any) {
        
        firstChoice.text = " "
        seconcChoice.text = " "
        thirdChoice.text = " "
        fourthChoice.text = " "
        fifthChoice.text = " "
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
