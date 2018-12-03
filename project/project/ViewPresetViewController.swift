//
//  ViewPresetViewController.swift
//  project
//
//  Created by Chungchhay Kuoch on 12/1/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import UIKit

class ViewPresetViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let divData = ["Division:          Recurve", "Division:          0", "Division:          0", "Division:          0", "Division:          0"]
    let disData = ["Distance:          18m", "Distance:          0", "Distance:          0", "Distance:          0", "Distance:          0"]
    let targetSizeData = ["Target Size:       40cm", "Target Size:       0", "Target Size:       0", "Target Size:       0", "Target Size:       0"]
    let endsData = ["ENDS:              5", "ENDS:              0", "ENDS:              0", "ENDS:              0", "ENDS:              0"]
    let arrowData = ["Arrow PER:         3", "Arrow PER:         0", "Arrow PER:         0", "Arrow PER:         0", "Arrow PER:         0"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        let nibName = UINib(nibName: "PresetTableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "PresetTableViewCellID")
        
        self.title = "View Preset"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return divData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PresetTableViewCellID", for: indexPath) as! PresetTableViewCell
        
        cell.commonInit(divData[indexPath.item], distance: disData[indexPath.item], targetSize: targetSizeData[indexPath.item], ends: endsData[indexPath.item], arrow: arrowData[indexPath.item])
        
        cell.backgroundColor = UIColor(red: 255/255, green: 132/255, blue: 132/255, alpha: 1.0)
        cell.divisionLabel.textColor = .white
        cell.distanceLabel.textColor = .white
        cell.targetSizeLabel.textColor = .white
        cell.endsLabel.textColor = .white
        cell.arrowLabel.textColor = .white
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let DvC = storyboard?.instantiateViewController(withIdentifier: "startID") as! startViewController
        DvC.getPreset = true
        
        self.navigationController?.pushViewController(DvC, animated: true)
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
