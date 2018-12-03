//
//  PresetTableViewCell.swift
//  project
//
//  Created by Chungchhay Kuoch on 12/1/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import UIKit

class PresetTableViewCell: UITableViewCell {

    @IBOutlet weak var divisionLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    @IBOutlet weak var targetSizeLabel: UILabel!
    
    
    @IBOutlet weak var endsLabel: UILabel!
    
    @IBOutlet weak var arrowLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func commonInit(_ division: String, distance: String, targetSize: String, ends: String, arrow: String) {
        divisionLabel.text = division
        distanceLabel.text = distance
        targetSizeLabel.text = targetSize
        endsLabel.text = ends
        arrowLabel.text = arrow
    }
    
}
