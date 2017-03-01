//
//  NewVCViewController.swift
//  Hackathon2K17
//
//  Created by Tal Weiss on 2/24/17.
//  Copyright © 2017 Tal Weiss. All rights reserved.
//

import UIKit

class NewVC: UIViewController {
    //IBOutlets GO HERE
    var scoutingObject:ScoutingObject?
    
    @IBOutlet weak var teamNoField: UITextField!
    @IBOutlet weak var matchField: UITextField!
    @IBOutlet weak var scouterNameField: UITextField!
    @IBOutlet weak var colorButton: UIButton!
    @IBOutlet weak var highGoalsMadeField: UITextField!
    @IBOutlet weak var highGoalsMissed: UITextField!
    @IBOutlet weak var lowGoalsMade: UITextField!
    @IBOutlet weak var lowGoalsMissed: UITextField!
    @IBOutlet weak var GearsField: UITextField!
    @IBOutlet weak var penaltiesTextView: UITextView!
    @IBOutlet weak var commentsTextView: UITextView!
    @IBOutlet weak var climBttn: UIButton!
    @IBOutlet weak var AutonomousHGoalsMade: UITextField!
    
    @IBOutlet weak var AutonomoudHGoalsMissed: UITextField!
    @IBOutlet weak var AutonomousLGoalsMade: UITextField!
    @IBOutlet weak var AutonomousLGoalsMissed: UITextField!
    @IBOutlet weak var gearbttnColor: UIButton!
    //END OF IBOutlet SECTION
    var teamColor = "blue"
    var climbcolor = "green"
    var gearcolor = "green"
    var basecolor = "green"
    
    //viewDidLoad and didRecieveMemoryWarning functions here
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    //END OF CODE SEGMENT
    @IBAction func IncrementHighGoalsMade(_ sender: UIButton) {
        let num = Int(highGoalsMadeField.text!)
        let calculation = num! + 1
        highGoalsMadeField.text! = String(calculation)
    }
    
    @IBAction func DecrementHighGoalsMade(_ sender: UIButton) {
        if Int(highGoalsMadeField.text!)! > 0 {
            print("greater than zero so decrement")
            let num = Int(highGoalsMadeField.text!)
            let calculation = num! - 1
            highGoalsMadeField.text! = String(calculation)
        }
        
    }
    
    @IBAction func IncrementHighGoalsMissed(_ sender: UIButton) {
        let num = Int(highGoalsMissed.text!)
        let calculation = num! + 1
        highGoalsMissed.text! = String(calculation)
    }
    
    @IBAction func DecrementHighGoalsMissed(_ sender: UIButton) {
        if Int(highGoalsMissed.text!)! > 0 {
            print("greater than zero so decrement")
            let num = Int(highGoalsMissed.text!)
            let calculation = num! - 1
            highGoalsMissed.text! = String(calculation)
        }
    }
    
    @IBAction func IncrementLowGoalsMade(_ sender: UIButton) {
        let num = Int(lowGoalsMade.text!)
        let calculation = num! + 1
        lowGoalsMade.text! = String(calculation)
    }
    
    @IBAction func DecrementLowGoalsMade(_ sender: UIButton) {
        if Int(lowGoalsMade.text!)! > 0 {
            print("greater than zero so decrement")
            let num = Int(lowGoalsMade.text!)
            let calculation = num! - 1
            lowGoalsMade.text! = String(calculation)
        }
    }
    
    @IBAction func IncrementLowGoalsMissed(_ sender: UIButton) {
        let num = Int(lowGoalsMissed.text!)
        let calculation = num! + 1
        lowGoalsMissed.text! = String(calculation)
    }
    
    @IBAction func DecrementLowGoalsMissed(_ sender: UIButton) {
        let num = Int(lowGoalsMade.text!)
        let calculation = num! + 1
        lowGoalsMade.text! = String(calculation)
    }
    
    @IBAction func IncreaseGears(_ sender: UIButton) {
        let num = Int(GearsField.text!)
        let calculation = num! + 1
        GearsField.text! = String(calculation)

    }
    
    @IBAction func DecreaseGears(_ sender: UIButton) {
        if Int(GearsField.text!)! > 0 {
            print("greater than zero so decrement")
            let num = Int(GearsField.text!)
            let calculation = num! - 1
            GearsField.text! = String(calculation)
        }
    }
    
    @IBAction func ChangeClimbColor(_ sender: UIButton) {
        //if color is green change to red
        if climbcolor == "green"{
            climBttn.backgroundColor = UIColor.red
            climbcolor = "red"
        }
        
        else{
            climBttn.backgroundColor = UIColor.green
            climbcolor = "green"
        }
        
        //if color is red change to green
    }
    
    @IBAction func ChangeTeamColor(_ sender: UIButton) {
        if teamColor == "blue" {
            colorButton.backgroundColor = UIColor.red
            teamColor = "red"
            colorButton.setTitle("Red", for: .normal)
            
        }
        else{
            colorButton.backgroundColor = UIColor.blue
            teamColor = "blue"
            colorButton.setTitle("Blue", for: .normal)
        }
        
        
    }
    
    //Autonomous section
    @IBAction func IncrementAutonomousHGoalMissed(_ sender: UIButton) {
        let num = Int(AutonomousHGoalsMade.text!)
        let calculation = num! + 1
        AutonomousHGoalsMade.text! = String(calculation)
    }
    @IBAction func DecrementAutonomousHGoalMade(_ sender: UIButton) {
        if Int(AutonomousHGoalsMade.text!)! > 0 {
            print("greater than zero so decrement")
            let num = Int(AutonomousHGoalsMade.text!)
            let calculation = num! - 1
            AutonomousHGoalsMade.text! = String(calculation)
        }
    }

    @IBAction func IncrementAutonomousGoalMissed(_ sender: UIButton) {
        let num = Int(AutonomoudHGoalsMissed.text!)
        let calculation = num! + 1
        AutonomoudHGoalsMissed.text! = String(calculation)
        
    }
    
    @IBAction func DecrementAutonomousHGoalMissed(_ sender: UIButton) {
        if Int(AutonomoudHGoalsMissed.text!)! > 0 {
            print("greater than zero so decrement")
            let num = Int(AutonomoudHGoalsMissed.text!)
            let calculation = num! - 1
            AutonomoudHGoalsMissed.text! = String(calculation)
        }
    }
    @IBAction func IncrementAutonomousLGoalMade(_ sender: UIButton) {
        let num = Int(AutonomousLGoalsMade.text!)
        let calculation = num! + 1
        AutonomousLGoalsMade.text! = String(calculation)
    }
    @IBAction func DecrementAutonomousLGoalMade(_ sender: UIButton) {
        if Int(AutonomousLGoalsMade.text!)! > 0 {
            print("greater than zero so decrement")
            let num = Int(AutonomousLGoalsMade.text!)
            let calculation = num! - 1
            AutonomousLGoalsMade.text! = String(calculation)
        }
    }
    @IBAction func IncrementAutonomousLGoalMissed(_ sender: UIButton) {
        let num = Int(AutonomousLGoalsMissed.text!)
        let calculation = num! + 1
        AutonomousLGoalsMissed.text! = String(calculation)

    }
    
    @IBAction func DecrementAutonomousLGoalMissed(_ sender: UIButton) {
        if Int(AutonomousLGoalsMissed.text!)! > 0 {
            print("greater than zero so decrement")
            let num = Int(AutonomousLGoalsMissed.text!)
            let calculation = num! - 1
            AutonomousLGoalsMissed.text! = String(calculation)
        }
    }
    @IBAction func changeGearColor(_ sender: UIButton) {
        if gearcolor == "green"{
            gearbttnColor.backgroundColor = UIColor.red
            gearcolor = "red"
        }
        else{
            gearbttnColor.backgroundColor = UIColor.green
            gearcolor = "green"
        }
        

    }
    @IBAction func changeCrossBaseLineColor(_ sender: UIButton) {
        if basecolor == "green"{
            sender.backgroundColor = UIColor.red
            basecolor = "red"
        }
        else{
            sender.backgroundColor = UIColor.green
            basecolor = "green"
        }
    }
    @IBAction func SubmitForm(_ sender: UIButton) {
        //private var strScoringArray = ["MadeAutoHG","MissedAutoHG","MadeAutoLG","MissedAutoLG","MadeTeleHG","MissedTeleHG","MadeTeleLG","MissedTeleLG", "TeleGearsMade","TeleGearsMissed"]

        
        scoutingObject?.setTeamNo(teamNo: Int(teamNoField.text!)!)
        scoutingObject?.setMatchNo(matchNo: Int(matchField.text!)!)
        scoutingObject?.setScouterName(scouterName: scouterNameField.text!)
        scoutingObject?.setScoringInfo(index: 0, value: Int(AutonomousHGoalsMade.text!)!)
        scoutingObject?.setScoringInfo(index: 1, value: Int(AutonomoudHGoalsMissed.text!)!)
        scoutingObject?.setScoringInfo(index: 2, value: Int(AutonomousLGoalsMade.text!)!)
        scoutingObject?.setScoringInfo(index: 3, value: Int(AutonomousLGoalsMissed.text!)!)
        scoutingObject?.setScoringInfo(index: 4, value: Int(highGoalsMadeField.text!)!)
        scoutingObject?.setScoringInfo(index: 5, value: Int(highGoalsMissed.text!)!)
        scoutingObject?.setScoringInfo(index: 6, value: Int(lowGoalsMade.text!)!)
        scoutingObject?.setScoringInfo(index: 7, value: Int(lowGoalsMissed.text!)!)
        scoutingObject?.setScoringInfo(index: 8, value: Int(GearsField.text!)!)
        scoutingObject?.setColor(color:teamColor)
        //scoutingObject?.setScoringInfo(index: 9, value: Int(gea.text!)!)

    }
    
    //Add IBActions here
    
    
    
    //End of IBActions sections
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
