//
//  TableViewCell.swift
//  project
//
//  Created by Chungchhay Kuoch on 12/1/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var endLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var endTotal: UILabel!
    @IBOutlet weak var runTotal: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func commonInit(_ end: String, score: String, eTotal: String, rTotal: String) {
        endLabel.text = end
        scoreLabel.text = score
        endTotal.text = eTotal
        runTotal.text = rTotal
    }
    
}
