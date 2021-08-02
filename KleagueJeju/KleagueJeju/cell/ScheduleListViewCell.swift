//
//  ScheduleListViewCell.swift
//  KleagueJeju
//
//  Created by 배성환 on 2021/08/02.
//

import UIKit

class ScheduleListViewCell: UITableViewCell {
    
    static let identifier = "ScheduleListViewCell"
    
    @IBOutlet weak var scheduleDate: UILabel!
    @IBOutlet weak var homeTeamMark: UIImageView!
    @IBOutlet weak var homeTeam: UILabel!
    @IBOutlet weak var awayTeamMark: UIImageView!
    @IBOutlet weak var awayTeam: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
