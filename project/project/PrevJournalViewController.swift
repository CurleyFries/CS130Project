//
//  PrevJournalViewController.swift
//  project
//
//  Created by user146389 on 11/30/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import UIKit

class PrevJournalViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentTextView: UITextView!
    
    
    var getdate = String()
    var gettitle = String()
    var getcontent = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        dateLabel.text = getdate
        titleLabel.text = gettitle
        contentTextView.text = getcontent
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
