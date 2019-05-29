//
//  RecommendedListCollectionView.swift
//  AppsmallRestaurant
//
//  Created by apple on 25/04/19.
//  Copyright © 2019 appsmall. All rights reserved.
//

import UIKit

class RecommendedListCollectionView: UICollectionView, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var dishes = [Dish]()
        
    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dishes.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendedDishCell", for: indexPath) as! RecommendedDishCell
        
        cell.dishName.text = dishes[indexPath.row].name
        cell.quantityLabel.text = dishes[indexPath.row].quantity
        cell.priceLabel.text = dishes[indexPath.row].price
        cell.dishImage.image = UIImage(named: dishes[indexPath.row].image)
        
        return cell
    }

}
