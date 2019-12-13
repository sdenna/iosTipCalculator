//
//  ViewController.swift
//  TipCalculator
//
//  Created by Shannon M. Denna on 1/31/19.
//  Copyright © 2019 Shannon M. Denna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipDisplayLabel: UILabel!
    @IBOutlet weak var totalDueLabel: UILabel!
    
    @IBAction func updateTipFromSlider(_ sender: Any) {
        
        // useful link to help with formatting currency
        // https://stackoverflow.com/questions/24031621/swift-how-to-convert-string-to-double
        
               let tipPercent = tipSlider.value
        
        if let billAmtDouble = Double(billTextField.text!) {

            let tipAmt = billAmtDouble * Double(tipPercent) / 100
            tipDisplayLabel.text = String(tipAmt)
            
            // retrun here to format and display the text value and then
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        billTextField.text = "$0.00"
        tipSlider.isHidden = false

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

