//
//  attachDataViewController.swift
//  project
//
//  Created by user146389 on 12/2/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import UIKit

class attachDataViewController: UIViewController {
    
    var journal = String()
    
    @IBOutlet weak var submitReq: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func unwindAttachData(segue: UIStoryboardSegue) {
        
    }

    @IBAction func submitReqButtonPushed(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
    }
}
