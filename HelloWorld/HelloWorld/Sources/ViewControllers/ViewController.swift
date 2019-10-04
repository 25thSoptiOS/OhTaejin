//
//  ViewController.swift
//  HelloWorld
//
//  Created by TaeJin Oh on 28/09/2019.
//  Copyright © 2019 TaeJin Oh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func sayHi(_ sender: Any) {
        self.titleLabel.text = "SOPT!"
    }
}

