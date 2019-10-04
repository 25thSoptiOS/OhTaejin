//
//  ViewController.swift
//  Soptstagram
//
//  Created by TaeJin Oh on 04/10/2019.
//  Copyright © 2019 TaeJin Oh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heartBtn: UIButton!
    @IBOutlet weak var likeID: UILabel!
    @IBOutlet weak var likesThisPost: UILabel!
    @IBOutlet weak var likeCounts: UILabel!
    @IBOutlet weak var profilePic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //좋아합니다 숨겨놓기
        likeID.isHidden = true
        likesThisPost.isHidden = true
        
        // 프사 둥글게 만들기
        profilePic.layer.borderWidth = 1
        profilePic.layer.masksToBounds = false
        profilePic.layer.borderColor = UIColor.white.cgColor
        profilePic.layer.cornerRadius = profilePic.frame.height/2
        profilePic.clipsToBounds = true
        
    }
    
    @IBAction func like(_ sender: UIButton) {
            
            sender.isSelected = !sender.isSelected
            
            if sender.isSelected == true {
                likeID.isHidden = false
                likesThisPost.isHidden = false
                likeCounts.text = "좋아요 23개"
                
            } else {
                likeID.isHidden = true
                likesThisPost.isHidden = true
                likeCounts.text = "좋아요 22개"
            }
            
        }
    }
    


