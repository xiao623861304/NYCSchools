//
//  SchoolTableViewCell.swift
//  20230517-YANFENG-NYCSchools
//
//  Created by yan feng on 2023/5/17.
//

import UIKit

class SchoolTableViewCell: UITableViewCell {
    @IBOutlet weak var schoolNameLabel: UILabel!
    @IBOutlet weak var schoolLocationLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupData(_ school: SchoolTableViewCellViewModel?) {
        schoolNameLabel.text = school?.schoolName ?? ""
        overviewLabel.text = school?.overviewParagraph ?? ""
        schoolLocationLabel.text = handleLocationData(location: school?.location ?? "") 
    }
    
    func handleLocationData(location : String) -> String
    {
        return location.components(separatedBy: "(").first ?? location
    }
}
