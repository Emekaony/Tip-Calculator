//
//  ViewController.swift
//  tip calculator
//
//  Created by SHAdON . on 8/13/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTExtField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func calculateTip(_ sender: Any) {
        // get bill amoutn from text field input
        let bill = Double(billAmountTExtField.text!) ?? 0
        
        // get total top by multiplying tip * tipPercentage
        let tipPercentage = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // now we update the tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // update the total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

