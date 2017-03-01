//
//  ViewController.swift
//  Hackathon2K17
//
//  Created by Tal Weiss on 2/24/17.
//  Copyright © 2017 Tal Weiss. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var scoutingObject = ScoutingObject()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let scoutObject = scoutingObject
        
        if let DestinationVC: NewVC = segue.destination as? NewVC{
            //pass scouting object here 
            DestinationVC.scoutingObject = scoutObject
        }
        
        if let DestinationVC: OldVC = segue.destination as? OldVC{
            DestinationVC.scoutObject = scoutObject
        }
    }


}

