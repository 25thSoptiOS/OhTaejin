//
//  ViewController.swift
//  Calculator
//
//  Created by TaeJin Oh on 2019/10/25.
//  Copyright © 2019 TaeJin Oh. All /Volumes/T5-Data/대학교/SOPT iOS/Calculator/Calculator/Resources/Base.lproj/Main.storyboardrights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    
    @IBOutlet weak var b0: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var acBtn: UIButton!
    @IBOutlet weak var evBtn: UIButton!
    @IBOutlet weak var plusBtn: UIButton!
    @IBOutlet weak var minusBtn: UIButton!
    @IBOutlet weak var timesBtn: UIButton!
    @IBOutlet weak var divideBtn: UIButton!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        result.text = "0"
        b0.layer.cornerRadius = 40
        b1.layer.cornerRadius = 40
        b2.layer.cornerRadius = 40
        b3.layer.cornerRadius = 40
        b4.layer.cornerRadius = 40
        b5.layer.cornerRadius = 40
        b6.layer.cornerRadius = 40
        b7.layer.cornerRadius = 40
        b8.layer.cornerRadius = 40
        b9.layer.cornerRadius = 40
        acBtn.layer.cornerRadius = 40
        evBtn.layer.cornerRadius = 40
        plusBtn.layer.cornerRadius = 40
        minusBtn.layer.cornerRadius = 40
        timesBtn.layer.cornerRadius = 40
        divideBtn.layer.cornerRadius = 40
        // Do any additional setup after loading the view.
    }
    
    var showNum: String? = nil
    var operSymbol: String? = nil
    var operPressed : Bool = false
    var everyNum: Array<Double> = Array<Double>()
    var doubleNum: Double = 0.0
    var everyOper: Array<String> = Array<String>()

    @IBAction func numBtn(_ sender: UIButton) {
        if operPressed == true {
            operPressed = false
        }
        
        if showNum == nil {
            showNum = (sender.titleLabel?.text)!
        }
        else {
            showNum? += (sender.titleLabel?.text)!
        }
        result.text = showNum
    }
    
    
    @IBAction func operBtn(_ sender: UIButton) {
        operSymbol = (sender.titleLabel?.text)!
        everyOper.append(operSymbol!)
        if showNum != nil {
            
            operPressed = true
            doubleNum = (showNum! as NSString).doubleValue
            everyNum.append(doubleNum)
            showNum = nil
        }
        
        if everyOper.count > everyNum.count{
            everyOper.remove(at: everyOper.count-2)
        }
        else {
            everyOper.append(operSymbol!)
        }
    }
    
    @IBAction func evalBtn(_ sender: UIButton) {
        if showNum != nil {
            doubleNum = (showNum! as NSString).doubleValue
            everyNum.append(doubleNum)
            showNum = nil
        }
        if everyOper.count == everyNum.count && everyOper.count != 0 {
            result.text = String(format:"%f", Evaluation(a: everyNum, b: everyOper))
        }
        
    }
    
    func Evaluation(a: Array<Double>, b: Array<String>) -> Double{
        var a2: Array<Double> = a
        var b2: Array<String> = b
        var answer: Double = 0.0
        var index: Int = 0
        var onlyPM: Bool = true
        for i in b2 {
            if i != "+" || i != "-" {
                onlyPM = false
            }
        }
        
        if onlyPM {
            for i in b2 {
                if i == "+" {
                    index = (b2.firstIndex(of: i))!
                    answer = a2[index] + a2[index+1]
                    a2.remove(at: index+1)
                    a2[index] = answer
                    b2.remove(at: index)
                }
                    
                else if i == "-" {
                    index = (b2.firstIndex(of: i))!
                    answer = a2[index] - a2[index+1]
                    a2.remove(at: index+1)
                    a2[index] = answer
                    b2.remove(at: index)
                }
            }
            
            return a2[0]
        }
            
        else {
            for i in b2 {
                if i == "×" {
                    index = (b2.firstIndex(of: i))!
                    answer = a2[index] * a2[index+1]
                    a2.remove(at: index+1)
                    a2[index] = answer
                    b2.remove(at: index)
                }
                
                else if i == "÷" {
                    index = (b2.firstIndex(of: i))!
                    answer = a2[index] / a2[index+1]
                    a2.remove(at: index+1)
                    a2[index] = answer
                    b2.remove(at: index)
                }
            }
            return Evaluation(a: a2, b:b2)
        }
    }
}

