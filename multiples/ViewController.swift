//
//  ViewController.swift
//  multiples
//
//  Created by G on 02/07/16.
//  Copyright © 2016 GabeCoder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Properties
    var addNumber = 0
    var leftSide = 0
    var rightSide = 0
    var clicked = 0
    
    // Outlets
    @IBOutlet weak var MULTIPLESlogo: UIImageView!
    @IBOutlet weak var PLAYbtn: UIButton!
    @IBOutlet weak var QuestionTxtF: UITextField!
    
    @IBOutlet weak var ADDbtn: UIButton!
    @IBOutlet weak var AddToaddLbl: UILabel!
    
    @IBAction func onPlayBtnPressed(sender: UIButton!) {
        
        
        if QuestionTxtF.text != nil && QuestionTxtF.text != "" {
 
            MULTIPLESlogo.hidden = true
            PLAYbtn.hidden = true
            QuestionTxtF.hidden = true
            
            ADDbtn.hidden = false
            AddToaddLbl.hidden = false

            
            addNumber = Int(QuestionTxtF.text!)!
            
        }
    }
    
    @IBAction func onAddBtnPressed(sender: UIButton!) {
        
        rightSide = leftSide + addNumber
        AddToaddLbl.text = "\(leftSide)" + " + " + "\(addNumber)" + " = " + "\(rightSide)"
        leftSide += addNumber
        clicked += 1
        
        if isAddOver() {
            restartGame()
        }
        
        
    }
    
    func restartGame() {
        
        addNumber = 0
        leftSide = 0
        rightSide = 0
        clicked = 0
        
        QuestionTxtF.text = ""
        AddToaddLbl.text = "Press ADD to add!"
        
        MULTIPLESlogo.hidden = false
        PLAYbtn.hidden = false
        QuestionTxtF.hidden = false
        
        ADDbtn.hidden = true
        AddToaddLbl.hidden = true
    }

    func isAddOver() -> Bool {
        if clicked >= 6 {
            return true
        } else {
            return false
        }
    }
}