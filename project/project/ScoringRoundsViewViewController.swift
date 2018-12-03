//
//  ScoringRoundsViewViewController.swift
//  project
//
//  Created by Chungchhay Kuoch on 12/1/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import UIKit

class ScoringRoundsViewViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let totalScoreData = ["Total Score:          89", "Total Score:          0", "Total Score:          0", "Total Score:          0", "Total Score:          0"]
    let averageData = ["Average arrow:          5.93", "Average arrow:          0", "Average arrow:          0", "Average arrow:          0", "Average arrow:          0"]
    let divData = ["Division:          Recurve", "Division:          0", "Division:          0", "Division:          0", "Division:          0"]
    let disData = ["Distance:          18m", "Distance:          0", "Distance:          0", "Distance:          0", "Distance:          0"]
    let targetSizeData = ["Target Size:       40cm", "Target Size:       0", "Target Size:       0", "Target Size:       0", "Target Size:       0"]
    let dateData = ["Date:             12/1/2018", "Date:              0", "Date:              0", "Date:              0", "Date:              0"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        let nibName = UINib(nibName: "ScoringRoundsViewTableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "ScoringRoundsViewTableViewCellID")
        
        self.title = "Past Scoring Rounds"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return totalScoreData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ScoringRoundsViewTableViewCellID", for: indexPath) as! ScoringRoundsViewTableViewCell
        
        cell.commonInit(totalScoreData[indexPath.item], average: averageData[indexPath.item],
                        division: divData[indexPath.item], distance: disData[indexPath.item], targetSize: targetSizeData[indexPath.item], date: dateData[indexPath.item])
        
        cell.backgroundColor = UIColor(red: 255/255, green: 132/255, blue: 132/255, alpha: 1.0)
        cell.totalScoreLabel.textColor = .white
        cell.averageLabel.textColor = .white
        cell.divisionLabel.textColor = .white
        cell.distanceLabel.textColor = .white
        cell.targetSizeLabel.textColor = .white
        cell.dateLabel.textColor = .white
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
