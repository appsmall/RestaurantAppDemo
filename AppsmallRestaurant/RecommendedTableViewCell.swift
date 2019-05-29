 //
//  RecommendedTableViewCell.swift
//  AppsmallRestaurant
//
//  Created by apple on 25/04/19.
//  Copyright © 2019 appsmall. All rights reserved.
//

import UIKit

class RecommendedTableViewCell: UITableViewCell {

    @IBOutlet weak var recommendedListCollectionView: RecommendedListCollectionView!
    
    var data : [Dish]!{
        didSet{
            recommendedListCollectionView.dishes = data
            self.recommendedListCollectionView.reloadData()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
