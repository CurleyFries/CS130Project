//
//  ScoringRoundsViewTableViewCell.swift
//  project
//
//  Created by Chungchhay Kuoch on 12/1/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import UIKit

class ScoringRoundsViewTableViewCell: UITableViewCell {

    
    @IBOutlet weak var totalScoreLabel: UILabel!

    @IBOutlet weak var averageLabel: UILabel!
    
    @IBOutlet weak var divisionLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var targetSizeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func commonInit(_ totalScore: String, average: String, division: String, distance: String, targetSize: String, date: String) {
        totalScoreLabel.text =  totalScore
        averageLabel.text = average
        divisionLabel.text = division
        distanceLabel.text = distance
        targetSizeLabel.text = targetSize
        dateLabel.text = date
        
    }
}
