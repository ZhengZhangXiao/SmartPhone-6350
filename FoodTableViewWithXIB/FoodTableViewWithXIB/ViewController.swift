//
//  ViewController.swift
//  FoodTableViewWithXIB
//
//  Created by Evie Zheng on 9/28/23.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    let imageNames = ["BananaBread","DanDanNoodles","PotStickers","Q-Bao","SpicyBeefShank","XiaoLongBao"]
    @IBOutlet weak var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("ImageTableViewCell", owner: self)?.first as! ImageTableViewCell
        cell.imgView?.image = UIImage(named: imageNames[indexPath.row])
        cell.lblImage.text = imageNames[indexPath.row]
        return cell
    }
    

}

