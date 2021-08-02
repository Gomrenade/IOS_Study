//
//  TitleViewCell.swift
//  GomCalc
//
//  Created by 배성환 on 2021/07/17.
//

import UIKit

class TitleViewCell: UITableViewCell {
    
    
    @IBOutlet weak var titleCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
