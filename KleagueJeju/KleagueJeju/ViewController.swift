//
//  ViewController.swift
//  KleagueJeju
//
//  Created by 배성환 on 2021/08/02.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scheduleList: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
    
        scheduleList.dataSource = self
    }


}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ScheduleListViewCell", for: indexPath) as! ScheduleListViewCell
        
        return cell
        
        
    }
    
}
