//
//  ViewController.swift
//  TipsCal
//
//  Created by Kevin Thaw on 1/10/19.
//  Copyright © 2019 Kevin Thaw. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true);
    }
    @IBAction func CalculateTip(_ sender: Any) {
        
        let tipPercentage = [0.18, 0.2, 0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex];
        let total = bill + tip;
        tipLabel.text = String(format: "$%0.2f",tip)
        totalLabel.text = String(format: "$%0.2f",total)
    }
}

