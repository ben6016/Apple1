//
//  ViewController.swift
//  Apple
//
//  Created by Ben Tseng on 2019/4/14.
//  Copyright © 2019 Ben Tseng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet var amountStepper: [UIStepper]!
    @IBOutlet var amountLabel: [UILabel]!
    
    let prices = [900, 600, 200]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    clearLabel()
    }
    func clearLabel() {
        for label in amountLabel{
            label.text = "數量："
        
        }
        totalLabel.text = "總金額：元"
        for stepper in amountStepper {
            stepper.value = 0
        
        }
}
    func calculator() {
    var sum = 0
        for (i,price) in prices.enumerated(){
            sum += Int (amountStepper[i].value) * price
        }
        totalLabel.text = "總金額：\(sum)元"
    }
    
    @IBAction func stepperChange(_ sender: UIStepper) {
        let num = Int(sender.value)
        amountLabel[sender.tag].text = "數量：\(num)"
        calculator()
    }
}
