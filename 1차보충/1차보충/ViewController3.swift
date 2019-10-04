//
//  ViewController3.swift
//  1차보충
//
//  Created by TaeJin Oh on 03/10/2019.
//  Copyright © 2019 TaeJin Oh. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var leftRight: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func leftRightSegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            leftRight.text = "왼쪽 선택됨"
        }
        else {
            leftRight.text = "오른쪽 선택됨"
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
