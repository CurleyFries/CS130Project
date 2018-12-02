//
//  attachJournalViewController.swift
//  project
//
//  Created by user146389 on 11/29/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import UIKit

class attachJournalViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var date:NSArray = []
    var journalTitle:NSArray = []
    var journalContent:NSArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        date = ["8/12", "9/12"]
        journalTitle = ["Title 1", "Title 2"]
        journalContent = ["Journal Content 1", "Journal Content 2"]
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
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return date.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "JournalTableViewCell") as! JournalTableViewCell
        cell.dateLabel.text! = date[indexPath.row] as! String
        cell.titleLabel.text! = journalTitle[indexPath.row] as! String
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let content = journalContent[indexPath.row]
        
        let DvC = attachDataViewController()
        DvC.journal = content as! String
        DvC.performSegue(withIdentifier: "unwindToattachDataViewController", sender: self)
        
    }
}
