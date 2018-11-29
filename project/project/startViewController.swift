//
//  startViewController.swift
//  project
//
//  Created by Chungchhay Kuoch on 11/9/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import UIKit

class startViewController: UIViewController {

    @IBOutlet var bowButtons: [UIButton]!
    @IBOutlet weak var selectButton: UIButton!
    
    @IBOutlet var distanceButtons: [UIButton]!
    @IBOutlet weak var distanceButtonSelect: UIButton!
    
    
    @IBOutlet var sizeButtons: [UIButton]!
    @IBOutlet weak var targetSizeButton: UIButton!
    
    
    @IBOutlet var arrowButtons: [UIButton]!
    @IBOutlet weak var arrowButtonSelect: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Scoring", style: .plain, target: self, action: #selector(handleScore))
        
        navigationItem.title = "Create New Preset"
    }
    
    @objc func handleScore() {
        let start = storyboard?.instantiateViewController(withIdentifier: "ScoreTableID") as! ScoreTableViewController
        
        navigationController?.pushViewController(start, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func handleDivision(_ sender: UIButton) {
        bowButtons.forEach{(button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }

    @IBAction func handleDistnace(_ sender: UIButton) {
        distanceButtons.forEach{(button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    @IBAction func handleTargetSize(_ sender: UIButton) {
        sizeButtons.forEach{ (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    enum sizes: String {
        case forty = "40cm"
        case sixty = "60cm"
        case eighty = "80cm"
        case oneTwenty = "122cm"
    }
    
    @IBAction func sizeTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle, let size = sizes(rawValue: title) else {
            return
        }
        
        targetSizeButton.setTitle(size.rawValue, for: .normal)
        
        sizeButtons.forEach{ (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    
    
    enum bows: String {
        case Barebow = "Barebow"
        case Recurve = "Recurve"
        case BowHunter = "Bowhunter"
        case Compound = "Compound"
    }
    
    enum distances: String {
        case fifteen = "15m"
        case eighteen = "18m"
        case thirty = "30m"
        case fifty = "50m"
        case seventy = "70m"
        case ninety = "90m"
    }
    
    @IBAction func distanceTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle, let distance = distances(rawValue: title) else {
            return
        }
        
        distanceButtonSelect.setTitle(distance.rawValue, for: .normal)
        
        distanceButtons.forEach{(button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    @IBAction func divisionTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle, let bow = bows(rawValue: title) else {
            return
        }
        
        selectButton.setTitle(bow.rawValue, for: .normal)
        
        bowButtons.forEach{(button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func stepperButton(_ sender: UIStepper) {
        var number = 0
        number = Int(sender.value)
        numberLabel.text = String(number)
    }
    
    
    @IBAction func handleArrows(_ sender: UIButton) {
        arrowButtons.forEach{(button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    enum arrows: String {
        case one = "1"
        case three = "3"
        case six = "6"
    }
    
    @IBAction func arrowTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle, let arrow = arrows(rawValue: title) else {
            return
        }
        
        arrowButtonSelect.setTitle(arrow.rawValue, for: .normal)
        
        arrowButtons.forEach{(button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    @IBAction func savePresetTapped(_ sender: UIButton) {
    }
    
    @IBAction func startScoringTapped(_ sender: UIButton) {
        handleScore()
    }
    
    
}
