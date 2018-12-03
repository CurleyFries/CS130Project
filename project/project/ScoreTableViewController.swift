//
//  ScoreTableViewController.swift
//  
//
//  Created by Chungchhay Kuoch on 11/14/18.
//

import UIKit

struct Cell {
    let endLabel: String?
    let scoreLabel: String?
    let endTotal: String?
    let runTotal: String?
}

class ScoreTableViewController: UITableViewController {
    
    var cellData = [Cell]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let temp = Cell.init(endLabel: "END:   0", scoreLabel: "Scores:   0", endTotal: "End total:   0", runTotal: "Run total:    0")
        cellData = [temp, temp, temp, temp, temp]
        
        self.tableView.register(customCell.self, forCellReuseIdentifier: "custom")
        //self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 200
        
        

    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellTemp = self.tableView.dequeueReusableCell(withIdentifier: "custom") as! customCell
        cellTemp.endLabel = cellData[indexPath.row].endLabel
        cellTemp.scoreLabel = cellData[indexPath.row].scoreLabel
        cellTemp.endTotal = cellData[indexPath.row].endTotal
        cellTemp.runTotal = cellData[indexPath.row].runTotal
        
        
        return cellTemp
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellData.count
    }
    

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let DvC = storyboard?.instantiateViewController(withIdentifier: "endsID") as! ENDSViewController
        
        DvC.getname = "ENDS"
        self.navigationController?.pushViewController(DvC, animated: true)
    }
    
    

}
