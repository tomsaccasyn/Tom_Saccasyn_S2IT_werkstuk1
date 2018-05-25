//
//  myCell.swift
//  MobileAppsIOSWerkstuk
//
//  Created by student on 15/05/2018.
//  Copyright © 2018 EHB. All rights reserved.
//

import UIKit

class myCell: UITableViewCell {
    @IBOutlet weak var Naam: UILabel!
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var Voornaam: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
      
        
        // Configure the view for the selected state
    }

}
