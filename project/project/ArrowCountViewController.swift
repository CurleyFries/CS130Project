//
//  ArrowCountViewController.swift
//  project
//
//  Created by user146389 on 11/14/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import UIKit

class ArrowCountViewController: UIViewController {

    @IBOutlet weak var add1: UIButton!
    @IBOutlet weak var sub1: UIButton!
    @IBOutlet weak var add3: UIButton!
    @IBOutlet weak var sub3: UIButton!
    
    @IBOutlet weak var add6: UIButton!
    @IBOutlet weak var sub6: UIButton!
    
    @IBOutlet weak var reset: UIButton!
    @IBOutlet weak var arrowLabel: UILabel!
    var arrowCount: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        arrowCount = 0
        arrowLabel.text = String(arrowCount)
    }
    

    @IBAction func add1ArrowBtn(_ sender: Any) {
        arrowCount = arrowCount + 1
        arrowLabel.text = String(arrowCount)
    }
    
    @IBAction func sub1ArrowBtn(_ sender: UIButton) {
        arrowCount = arrowCount - 1
        if arrowCount<0 {
            arrowCount = 0
        }
        arrowLabel.text = String(arrowCount)
    }
    
    @IBAction func add3ArrowBtn(_ sender: Any) {
        arrowCount = arrowCount + 3
        arrowLabel.text = String(arrowCount)
    }
    
    @IBAction func sub3ArrowBtn(_ sender: Any) {
        arrowCount = arrowCount - 3
        if arrowCount<0 {
            arrowCount = 0
        }
        arrowLabel.text = String(arrowCount)
    }
    
    @IBAction func add6ArrowBtn(_ sender: Any) {
        arrowCount = arrowCount + 6
        arrowLabel.text = String(arrowCount)
    }
    
    @IBAction func sub6ArrowBtn(_ sender: Any) {
        arrowCount = arrowCount - 6
        if arrowCount<0 {
            arrowCount = 0
        }
        arrowLabel.text = String(arrowCount)
    }
    

    @IBAction func resetArrowCntBtn(_ sender: Any) {
        arrowCount = 0
        arrowLabel.text = String(arrowCount)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
