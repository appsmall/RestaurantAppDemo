//
//  DishCell.swift
//  AppsmallRestaurant
//
//  Created by apple on 25/04/19.
//  Copyright © 2019 appsmall. All rights reserved.
//

import UIKit

class DishCell: UITableViewCell {

    @IBOutlet weak var dishName: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var addView: UIView!
    @IBOutlet weak var incButton: UIButton!
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var decLabel: UIButton!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
