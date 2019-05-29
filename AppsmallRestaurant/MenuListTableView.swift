//
//  MenuListTableView.swift
//  AppsmallRestaurant
//
//  Created by apple on 25/04/19.
//  Copyright © 2019 appsmall. All rights reserved.
//

import UIKit

class MenuListTableView: UITableView, UITableViewDataSource, UITableViewDelegate {

    let dishes = [Dish(name: "Chesse Chilly", image: "1", price: "120", category: "Indian", quantity: "1"),
                  Dish(name: "Manchuriyan", image: "2", price: "100", category: "Indian", quantity: "1"),
                  Dish(name: "North Indian Thali", image: "3", price: "120", category: "Indian", quantity: "1"),
                  Dish(name: "North Indian Thali", image: "3", price: "120", category: "Indian", quantity: "1"),
                  Dish(name: "North Indian Thali", image: "1", price: "120", category: "Indian", quantity: "1"),
                  Dish(name: "North Indian Thali", image: "3", price: "120", category: "Indian", quantity: "1"),
                  Dish(name: "North Indian Thali", image: "1", price: "120", category: "Indian", quantity: "1"),
                  Dish(name: "North Indian Thali", image: "1", price: "120", category: "Indian", quantity: "1"),
                  Dish(name: "North Indian Thali", image: "2", price: "120", category: "Indian", quantity: "1"),
                  Dish(name: "North Indian Thali", image: "3", price: "120", category: "Indian", quantity: "1"),
                  Dish(name: "North Indian Thali", image: "1", price: "120", category: "Indian", quantity: "1"),
                  Dish(name: "North Indian Thali", image: "3", price: "120", category: "Indian", quantity: "1"),
                  Dish(name: "North Indian Thali", image: "3", price: "120", category: "Indian", quantity: "1"),
                  Dish(name: "North Indian Thali", image: "2", price: "120", category: "Indian", quantity: "1"),
                  Dish(name: "North Indian Thali", image: "3", price: "120", category: "Indian", quantity: "1")]
    
    let summary = Summary(ratings: "5.0", deliveryTime: "35 min", forTwo: "300")
    
    var data = [Dish]()
    
    override func awakeFromNib() {
        self.dataSource = self
        self.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 2
        }
        else if section == 1 {
            return 1
        }
        else {
            return 5
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return nil
        }
        else if section == 1 {
            return "Recommended"
        }
        else {
            return "Category "
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 1 {
            // Recommeneded Dish
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "RecommendedTableViewCell") as! RecommendedTableViewCell
            cell.data = data
            return cell
        }
        else if indexPath.section == 0 {
            
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "SummaryCell")
                
                return cell!
            }
            else {
                let cell = tableView.dequeueReusableCell(withIdentifier: "SwitchCell")
                
                return cell!
            }
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DishCell") as! DishCell
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 60.0
        }
        else if indexPath.section == 1 {
            return 340.0
        }
        else {
            return 62.0
        }
    }

}
