//
//  ViewController.swift
//  BinaryCounter
//
//  Created by admin on 14/12/2021.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var total: UILabel!
    var totalnum:Int = 0
        
   

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource=self
        tableView.delegate=self
        // Do any additional setup after loading the view.
    }


}
extension ViewController:UITableViewDelegate,UITableViewDataSource,CellDelegate{
    func addfunc(value: Int) {
        totalnum+=value
        total.text="Total :\(totalnum)"
        }
        
        func subtractfunc(value: Int) {
            totalnum-=value
            total.text = "Total :\(totalnum)"
        }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.numbers.text = String(describing: pow(10, indexPath.row))
        cell.delegate = self
        
       return cell
        
    }
    
    
    
    
    
    
}


