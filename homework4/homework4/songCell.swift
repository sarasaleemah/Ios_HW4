//
//  songCell.swift
//  homework4
//
//  Created by Haya Saleemah on 10/9/20.
//

import UIKit

class songCell: UITableViewCell {

    @IBOutlet weak var actornamelabel: UILabel!
    @IBOutlet weak var actorimage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
