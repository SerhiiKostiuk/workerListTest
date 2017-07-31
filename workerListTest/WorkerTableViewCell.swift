//
//  WorkerTableViewCell.swift
//  workerListTest
//
//  Created by Сергій Костюк on 7/28/17.
//  Copyright © 2017 Сергій Костюк. All rights reserved.
//

import UIKit

class WorkerTableViewCell: UITableViewCell {

    @IBOutlet weak var workerNameAnd: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func fillCell(string: String) {
      workerNameAnd.text = string
    }
}
