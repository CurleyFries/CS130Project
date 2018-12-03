//
//  MyTeamsViewController.swift
//  project
//
//  Created by user146389 on 12/1/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import UIKit

class MyTeamsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var teamImage:NSArray = []
    var teamName:NSArray = []
    var teamDivision:NSArray = []
    var teamID:NSArray = []
    var teamPosition:NSArray = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        teamName = ["UCLA Club Archery", "Not UCLA", "Maybe UCLA", "Its UCLA"]
        teamImage = [UIImage(named: "UCLALogo.jpg")!, UIImage(named: "UCLALogo.jpg")!, UIImage(named: "UCLALogo.jpg")!, UIImage(named: "UCLALogo.jpg")!]
        teamDivision = ["Recurve", "Barebow", "Bowhunter","Compound"]
        teamID = [001, 002, 003, 004]
        teamPosition = ["Member", "Manager", "Member", "Member"]
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
        return teamName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTeamTableViewCell") as! MyTeamTableViewCell
        
        cell.teamImageView.image = teamImage[indexPath.row] as! UIImage
        cell.nameLabel.text! = teamName[indexPath.row] as! String
        cell.divisionLabel.text! = teamDivision[indexPath.row] as! String
        cell.positionLabel.text! = teamPosition[indexPath.row] as! String
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Storyboard = UIStoryboard(name: "Main", bundle: nil)
        let DvC = Storyboard.instantiateViewController(withIdentifier: "submitReq") as! SubmitRequirementViewController
        
        DvC.getDivision = teamDivision[indexPath.row] as! String
        DvC.getImage = teamImage[indexPath.row] as! UIImage
        DvC.getTeamName = teamName[indexPath.row] as! String
        DvC.getPosition = teamPosition[indexPath.row] as! String
    
        self.navigationController?.pushViewController(DvC, animated: true)    }
}
