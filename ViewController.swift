//
//  ViewController.swift
//  TipCalculator
//
//  Created by Anu Gayam on 2/23/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountLabel: UITextField!
    
    @IBOutlet weak var TipAmountLabel10: UILabel!
    
    @IBOutlet weak var TipAmountLabel15: UILabel!
    
    
    @IBOutlet weak var TipAmountLabel20: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func calculateTip(_ sender: Any) {
        
        let billAmount = Double(self.billAmountLabel.text ?? "") ?? 0
        
        let tipPercentage_a = 0.10
        let tipPercentage_b = 0.15
        let tipPercentage_c = 0.20
        
        let TipAmount10 = (billAmount*tipPercentage_a)
        self.TipAmountLabel10.text="$\(TipAmount10)"
        
        let TipAmount15 = (billAmount*tipPercentage_b)
        self.TipAmountLabel15.text="$\(TipAmount15)"
        
        let TipAmount20 = (billAmount*tipPercentage_c)
        self.TipAmountLabel20.text="$\(TipAmount20)"
        
    }
}


