//
//  OldVC.swift
//  Hackathon2K17
//
//  Created by Tal Weiss on 2/24/17.
//  Copyright © 2017 Tal Weiss. All rights reserved.
//

import UIKit

class OldVC: UIViewController {
    
    var scoutObject: ScoutingObject?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //IBFunctions go here 
    @IBAction func LoadForm1(_ sender: UIButton) {
        //will load up the 0th element of the scouting array
    
        }
    
    @IBAction func LoadForm2(_ sender: UIButton) {
        //will load up the 1st element of the scouting array
        }
    
    @IBAction func LoadForm3(_ sender: UIButton) {
        //will load up the 2nd element of the scouting array
    
        }
    

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let scoutingObject = scoutObject
        
        if let DestinationVC: ExportVC = segue.destination as? ExportVC{
            
            DestinationVC.scoutingObject = scoutingObject
            
            
        }
    }
 

}
