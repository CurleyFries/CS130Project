//
//  SubmitRequirementViewController.swift
//  project
//
//  Created by user146389 on 12/1/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import UIKit

class SubmitRequirementViewController: UIViewController {

    var getTeamName = String()
    var getImage = UIImage()
    var getDivision = String()
    var getPosition = String()
    
    
    @IBOutlet weak var teamLogo: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var divisionLabel: UILabel!
    
    @IBOutlet weak var positionLabel: UILabel!
    
    @IBOutlet weak var viewReqsButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        teamLogo.image = getImage
        nameLabel.text! = getTeamName
        divisionLabel.text! = getDivision
        positionLabel.text! = getPosition
        navigationItem.title = getTeamName
        
        if positionLabel.text != "Manager" {
            viewReqsButton.isHidden = true
        }
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
