//
//  ViewController.swift
//  cold_call
//
//  Created by Tri Pham on 2/8/17.
//  Copyright © 2017 Tri Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let nameBank = ["Connie", "Ellis", "Jeanne", "Gilbert", "Emanuel"]
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func callButtonPressed(_ sender: UIButton) {
        var ran = Int(arc4random_uniform(UInt32(nameBank.count)))
        nameLabel.text = nameBank[ran]
        ran = Int(arc4random_uniform(UInt32(nameBank.count))+1)
        numberLabel.text = String(ran)
        if ran == 5 {
            numberLabel.textColor = UIColor.green
        }
        else if ran == 1 || ran == 2 {
            numberLabel.textColor = UIColor.red
        }
        else {
            numberLabel.textColor = UIColor.orange
        }
        numberLabel.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberLabel.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

