//
//  ScoutingObject.swift
//  Hackathon2K17
//
//  Created by Tal Weiss on 2/25/17.
//  Copyright © 2017 Tal Weiss. All rights reserved.
//

import Foundation
class ScoutingObject{
    //Insert your global variables here
    private var teamNo = 0
    private var matchNo = 0
    private var scouterName = ""
//  private var highGoalsMade = 0
//  private var highGoalsMissed = 0
//  private var lowGoalsMade = 0
//  private var lowGoalsMissed = 0
//  private var totalGears = 0
    private var penalties = " "
    private var comments = " "
    private var color = "blue"
//  private var climbColor = "green"
    private var strScoringArray = ["MadeAutoHG","MissedAutoHG","MadeAutoLG","MissedAutoLG","MadeTeleHG","MissedTeleHG","MadeTeleLG","MissedTeleLG", "TeleGearsMade","TeleGearsMissed"]
    private var scoringArray = [0,0,0,0,0,0,0,0,0,0]
    
    private var strBoolArray = ["TeamColor","AutoGears","AutoBase","AutoClimb"]
    private var boolArray = [true,true,true,true]
    
    func ExportAll() ->String{
        var result = ""
        result = "\(teamNo)"
        if(boolArray[1]){
            result = result + "blue,"
        }
        else{
            result = result + "red,"
        }
        result = "\(color)\(matchNo),\(scouterName),\(scoringArray[0]),\(scoringArray[1]),\(scoringArray[2]),\(scoringArray[3]),\(scoringArray[4]),\(scoringArray[5]),\(scoringArray[6]),\(scoringArray[7]),\(scoringArray[8]),\(scoringArray[9]),\(penalties),\(comments)"
       // ),\(result),\(teamNo)"
        return String(result)
    }
    
    
    func getTeamNo() -> Int{
        return teamNo
    }
    
    func setTeamNo(teamNo: Int){
        self.teamNo = teamNo
    }
    
    func getScouterName() -> String{
        return scouterName
    }
    
    func setScouterName(scouterName: String){
        self.scouterName = scouterName
    }
    
    func getmatchNo() -> Int{
        return matchNo
    }
    
    func setMatchNo(matchNo: Int) {
        self.matchNo = matchNo
    }
    
    func getScoringInfo(index: Int) -> Int{
        return scoringArray[index]
    }
    
    func setScoringInfo(index: Int, value: Int){
        scoringArray[index] = value
    }
    
    func getBoolArray(index: Int) -> Bool{
        return boolArray[index]
    }
    
    func setBoolArray(index: Int, value: Bool){
        return boolArray[index] = value
    }
    
    func setColor(color:String){
        self.color = color
    }
    
    
    
    
    
    //END OF VARS SECTIONS
    
    //Insert your initializer and class functions here

    //    init(teamNo: Int, matchNo: Int, scouterName: String, highGoalsMade: Int, highGoalsMised: Int, lowGoalsMade: Int, lowGoalsMissed: Int, totalGears: Int, penalties: String, comments: String, color: String, climbColor: String ) {
//        self.teamNo = teamNo
//        self.matchNo = matchNo
//        self.scouterName = scouterName
//        self.highGoalsMade = highGoalsMade
//        self.highGoalsMissed = highGoalsMised
//        self.lowGoalsMade = lowGoalsMade
//        self.lowGoalsMissed = lowGoalsMissed
//        self.totalGears = totalGears
//        self.penalties = penalties
//        self.comments = comments
//        self.color = color
//        self.climbColor = climbColor
//        
//    }
    init() {//no need for an initializer
    }
    
    
    
    
    
    
    
    //END OF FUNCTIONS SECTIONS
    
    
}
