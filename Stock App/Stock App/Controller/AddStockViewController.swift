//
//  AddStockViewController.swift
//  Stock App
//
//  Created by Evie Zheng on 10/25/23.
//

import UIKit
import Alamofire
import SwiftyJSON
import RealmSwift

class AddStockViewController: UIViewController {

    @IBOutlet weak var txtStock: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addStockAction(_ sender: Any) {
        guard let stockSymbol = txtStock.text else {return}
        
        getStockInfo(symbol: stockSymbol).done { stockClass in
            do {
                let realm = try Realm()
                try realm.write({
                    realm.add(stockClass, update: .modified)
                })
                self.navigationController?.popViewController(animated: true)
            }
            catch {
                print("Error in adding data to the Realm DB \(error)");
            }
        }
        .catch { error in
            print("Unable to get stock value \(error)")
        }
        
    }
    
}
