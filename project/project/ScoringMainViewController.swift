//
//  ScoringMainViewController.swift
//  project
//
//  Created by Chungchhay Kuoch on 11/14/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import UIKit

class ScoringMainViewController: UIViewController {

    @IBAction func handleNewScoringRound(_ sender: UIButton) {
        let start = storyboard?.instantiateViewController(withIdentifier: "startID") as! startViewController
        start.getPreset = false
        
        navigationController?.pushViewController(start, animated: true)
    }
    
    @IBAction func handleViewPastScoringRounds(_ sender: UIButton) {
        let start = storyboard?.instantiateViewController(withIdentifier: "ScoringRoundsID") as! ScoringRoundsViewViewController
        
        navigationController?.pushViewController(start, animated: true)
    }
    
    
    @IBAction func handleCreateNewPreset(_ sender: UIButton) {
        let start = storyboard?.instantiateViewController(withIdentifier: "startID") as! startViewController
        
        navigationController?.pushViewController(start, animated: true)
    }
    
    
    @IBAction func handleViewPresets(_ sender: UIButton) {
        let start = storyboard?.instantiateViewController(withIdentifier: "ViewPresetID") as! ViewPresetViewController
        
        navigationController?.pushViewController(start, animated: true)
    }
    
    @IBAction func handleArrowCount(_ sender: UIButton) {
        let start = storyboard?.instantiateViewController(withIdentifier: "ArrowCountID") as! ArrowCountViewController
        
        navigationController?.pushViewController(start, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Scoring"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
