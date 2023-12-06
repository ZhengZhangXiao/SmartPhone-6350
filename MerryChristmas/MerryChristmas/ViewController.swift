//
//  ViewController.swift
//  MerryChristmas
//
//  Created by Evie Zheng on 12/2/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
     let cities = ["New York", "London", "Paris", "Seattle"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("ChristmasTableViewCell", owner: self)?.first as! ChristmasTableViewCell
        cell.imgView?.image = UIImage(named: "Christmas\(indexPath.row)")
        cell.lblChristmas.text = cities[indexPath.row]
        return cell
        
    }
    
}

