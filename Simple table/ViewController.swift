//
//  ViewController.swift
//  Simple table
//
//  Created by Apple on 2016/2/21.
//  Copyright © 2016年 AppcCoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Key Restaurant", "Po`s Atelier", "Bourke Street Bakery", "Hight`s Chocolate", "Palomine Espresso", "Upstate", "Traif", "Graham Avenus Meat and Deli", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostria", "Royal Oak", "Cask Pub and Kitchen"]
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) ->
        Int {
    // Return the number of rows in the section.
    return restaurantNames.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:
        NSIndexPath) -> UITableViewCell {
    let cellIdentifier = "Cell"
    let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)
            
            // Configure the cell...
            cell.textLabel?.text = restaurantNames[indexPath.row]
            cell.imageView?.image = UIImage(named: "restaurant")
            
            return cell
    }
    override func prefersStatusBarHidden() -> Bool{
    return true
    }
    

}

