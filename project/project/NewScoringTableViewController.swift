//
//  NewScoringTableViewController.swift
//  project
//
//  Created by Chungchhay Kuoch on 12/1/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import UIKit

class NewScoringTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let endData = ["END:   0", "END:   0", "END:   0", "END:   0", "END:   0"]
    let scoreData = ["Scores: 0", "Scores: 0", "Scores: 0", "Scores: 0", "Scores: 0",]
    let endTotalData = ["End total:   0", "End total:   0", "End total:   0", "End total:   0", "End total:   0"]
    let runTotalData = ["Run total:    0", "Run total:    0", "Run total:    0", "Run total:    0", "Run total:    0"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Scoring Table"
        tableView.dataSource = self
        tableView.delegate = self
        
        let nibName = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "tableViewCellID")
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return endData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCellID", for: indexPath) as! TableViewCell
        
        cell.commonInit(endData[indexPath.item], score: scoreData[indexPath.item], eTotal: endTotalData[indexPath.item], rTotal: runTotalData[indexPath.item])
        
        cell.backgroundColor = UIColor(red: 255/255, green: 132/255, blue: 132/255, alpha: 1.0)
        cell.endLabel.textColor = .white
        cell.scoreLabel.textColor = .white
        cell.endTotal.textColor = .white
        cell.runTotal.textColor = .white
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let DvC = storyboard?.instantiateViewController(withIdentifier: "endsID") as! ENDSViewController
        
        DvC.getname = "ENDS"
        self.navigationController?.pushViewController(DvC, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
