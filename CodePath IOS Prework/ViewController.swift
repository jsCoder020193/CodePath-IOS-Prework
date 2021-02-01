//
//  ViewController.swift
//  CodePath IOS Prework
//
//  Created by SubbaLakshmi on 1/31/21.
//  Copyright © 2021 SubbaLakshmi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var mainView: UIView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
//    var bckColor = UIColor(displayP3Red: 0.416, green: 0.796, blue: 0.957, alpha: 1.0)
    var bckColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bckColor = mainView.backgroundColor
    }

    @IBAction func didTapButton(_ sender: Any) {
        if textLabel.textColor==UIColor.red {
            textLabel.textColor = UIColor.black
        }else{
            textLabel.textColor = UIColor.red
        }
        
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
 
        if mainView.backgroundColor==UIColor.orange {
            mainView.backgroundColor = bckColor
        }else{
            mainView.backgroundColor = UIColor.orange
        }
    }
    
    @IBAction func didTapTextStringButton(_ sender: Any) {
        let textFieldString = textField.text
        if(textFieldString == ""){
            textLabel.text = "Good Bye !"
        }else{
            textLabel.text = textFieldString
        }

        textField.text = ""
        mainView.endEditing(true)
    }
    
    @IBAction func onRsetGesture(_ sender: Any) {
        textLabel.text = "Sample Text"
        textLabel.textColor = UIColor.black
        mainView.backgroundColor = bckColor
    }
    
    
}

