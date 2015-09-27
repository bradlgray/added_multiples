//
//  ViewController.swift
//  added_multiples
//
//  Created by Brad Gray on 9/27/15.
//  Copyright © 2015 Brad Gray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //properties
    
    var maxSum = 50
    var runningSum = 0
    
    var multiple = 0
    
    //outlets
    
    @IBOutlet weak var multiplesLbl: UIImageView!
    @IBOutlet weak var playLbl: UIButton!
    
    @IBOutlet weak var addLbl: UIButton!
    @IBOutlet weak var addTxtLbl: UITextField!
    
    @IBOutlet weak var addedSum: UILabel!
    
    
    @IBAction func play(sender: UIButton) {
        
        
        
        if addTxtLbl.text != nil && addTxtLbl.text != "" {
            
            ShowAddScreen()
            
            addedSum.text = "Click to Add"
            
            multiple = Int(addTxtLbl.text!)!
            runningSum = 0
            
            
        }
        
        
        
        
        
        
    }
    
    
    
    @IBAction func add(sender: UIButton) {
        let totalSum = runningSum + multiple
        
        addFunc(runningSum, mul: multiple, newSum: totalSum)
        runningSum += multiple
        
        if gameIsOver() {
            restartGame()
            
            
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func ShowAddScreen() {
        
        multiplesLbl.hidden = true
        playLbl.hidden = true
        addTxtLbl.hidden = true
        
        addedSum.hidden = false
        addLbl.hidden = false
    }
    
    
    func addFunc(oldSum: Int, mul: Int, newSum: Int) {
        addedSum.text = "\(oldSum) + \(mul) = \(newSum)"
        
    }
    
    func restartGame() {
        multiple = 0
        
        multiplesLbl.hidden = false
        playLbl.hidden = false
        addTxtLbl.hidden = false
        
        addedSum.hidden = true
        addLbl.hidden = true
        
        addTxtLbl.text = ""
        
    }
    
    func gameIsOver() -> Bool {
        if runningSum >= maxSum {
            return true
        } else {
            return false;
        }
    }
    
}





