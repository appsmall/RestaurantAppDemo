//
//  ViewController.swift
//  AppsmallRestaurant
//
//  Created by apple on 25/04/19.
//  Copyright © 2019 appsmall. All rights reserved.
//

import UIKit

struct Dish {
    let name: String
    let image: String
    let price: String
    let category: String
    let quantity: String
}

struct Summary {
    let ratings: String
    let deliveryTime: String
    let forTwo: String
}




class ViewController: UIViewController {
    
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

    @IBOutlet weak var menuListTableView: MenuListTableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuListTableView.data = dishes
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
}

