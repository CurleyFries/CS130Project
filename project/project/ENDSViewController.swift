//
//  ENDSViewController.swift
//  project
//
//  Created by Chungchhay Kuoch on 11/11/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import UIKit

protocol DataEnteredDelegate: class {
    func setEnd(argu: String, end: Int, scores: Array<Int>)
}

class ENDSViewController: UIViewController {
    weak var delegate: DataEnteredDelegate? = nil
    var getname	 = "Default"
    var end = Int()
    var scoreArray:Array<Int> = []
    @IBOutlet weak var endName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Specific END Editing"
        endName.text = "\(getname)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var numberLabel: UILabel!

    
    @IBAction func ClrButtonTapped(_ sender: UIButton) {
        numberLabel.text = ""
    }
    
    @IBAction func DelButtonTapped(_ sender: Any) {
        let curLabel = String(numberLabel.text!)
        
        if (curLabel == "") {
            return;
        }
        
        if curLabel[curLabel.index(before: curLabel.endIndex)] != "0"
        {
        let index = curLabel.index(curLabel.startIndex, offsetBy: curLabel.count - 3)
        let newLabel = curLabel[..<index]
        numberLabel.text = String(newLabel)
        }
        else {
            let index = curLabel.index(curLabel.startIndex, offsetBy: curLabel.count - 4)
            let newLabel = curLabel[..<index]
            numberLabel.text = String(newLabel)
        }
    
    }
    
    
    @IBAction func numberTapped(_ sender: UIButton) {
        if (sender.titleLabel?.text == "X") {
            return;
        }
        
        numberLabel.text = numberLabel.text! + "    " + (sender.titleLabel?.text!)!
        scoreArray.append(Int((sender.titleLabel?.text)!)!)
    }

    @IBAction func submitButtonTapped(_ sender: UIButton) {

        
        delegate?.setEnd(argu: ("END:  " + numberLabel.text!), end: end, scores: scoreArray)
       navigationController?.popViewController(animated: true)

    }
    
    
}
