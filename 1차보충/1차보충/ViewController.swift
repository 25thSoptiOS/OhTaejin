//
//  ViewController.swift
//  1차보충
//
//  Created by TaeJin Oh on 03/10/2019.
//  Copyright © 2019 TaeJin Oh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var candle: UIImageView!
    @IBOutlet weak var onOff: UILabel!
    @IBOutlet weak var `switch`: UISwitch!
    
    let candleOnImage = UIImage(named: "candleOn")
    let candleOffImage = UIImage(named: "candleOff")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func candleOnOff(_ sender: UISwitch) {
        if sender.isOn
        {
            candle.image = candleOnImage
            onOff.text = "Switch is On"
        }
        else
        {
            candle.image = candleOffImage
            onOff.text = "Switch is Off"
        }
    }
    
}

