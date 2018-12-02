//
//  JournalEntryViewController.swift
//  project
//
//  Created by user146389 on 11/29/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import UIKit

class JournalEntryViewController: UIViewController {


    @IBOutlet var titleTextField: UITextField!
    @IBOutlet weak var contentTextView: UITextView!
    @IBOutlet weak var saveEntryButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveEntryPressed(_ sender: Any) {
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        
        var titleText: String = titleTextField.text!
        var contentText: String = contentTextView.text
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
