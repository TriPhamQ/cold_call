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
    
    @IBAction func callButtonPressed(_ sender: UIButton) {
        print(nameBank.count)
        let ran = Int(arc4random_uniform(UInt32(nameBank.count)))
        print(ran)
        nameLabel.text = nameBank[ran]
        nameLabel.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

