//
//  ViewController.swift
//  GomCalc
//
//  Created by 배성환 on 2021/06/08.
//

import UIKit

class ViewController: UIViewController{
    
    
    
    @IBOutlet weak var calcTabelView: UITableView!
    let cellName: String = "TitleViewCell"
    let titleName: Array<String> = ["test title","test tilte2"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        calcTabelView.delegate = self
        calcTabelView.dataSource = self
    }
    
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("test1")
        return titleName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = calcTabelView.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! TitleViewCell
        print("test2")
        cell.titleCell.text = "test"
        
        return cell
    }
}
