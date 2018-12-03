//
//  customCell.swift
//  project
//
//  Created by Chungchhay Kuoch on 11/14/18.
//  Copyright © 2018 Chungchhay Kuoch. All rights reserved.
//

import Foundation
import UIKit

class customCell: UITableViewCell {
    var endLabel: String?
    var scoreLabel: String?
    var endTotal: String?
    var runTotal: String?
    
    var endLabelView : UITextView = {
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    var scoreLabelView : UITextView = {
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isScrollEnabled = false
        return textView
    }()

    var endTotalView : UITextView = {
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isScrollEnabled = false
        return textView
    }()

    var runTotalView : UITextView = {
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isScrollEnabled = false
        return textView
    }()

    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        self.addSubview(endLabelView)
        self.addSubview(scoreLabelView)
        self.addSubview(endTotalView)
        self.addSubview(runTotalView)
        
        
        endLabelView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        endLabelView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        //endLabelView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        endLabelView.bottomAnchor.constraint(equalTo: self.scoreLabelView.topAnchor).isActive = true
        
        scoreLabelView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        scoreLabelView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        scoreLabelView.topAnchor.constraint(equalTo: self.endLabelView.bottomAnchor).isActive = true
        scoreLabelView.bottomAnchor.constraint(equalTo: self.endTotalView.topAnchor).isActive = true

        endTotalView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        endTotalView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        endTotalView.topAnchor.constraint(equalTo: self.scoreLabelView.bottomAnchor).isActive = true
        endTotalView.bottomAnchor.constraint(equalTo: self.runTotalView.topAnchor).isActive = true


        runTotalView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        runTotalView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        runTotalView.topAnchor.constraint(equalTo: endTotalView.bottomAnchor).isActive = true
        runTotalView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        if let temp1 = endLabel {
            endLabelView.text = temp1
        }
        
        if let temp2 = scoreLabel {
            scoreLabelView.text = temp2
        }
        
        if let temp3 = endTotal {
            endTotalView.text = temp3
        }
        
        if let temp4 = runTotal {
            runTotalView.text = temp4
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Init has not been implemented")
    }
}
