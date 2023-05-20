//
//  SATScoresTableViewCell.swift
//  20230517-YANFENG-NYCSchools
//
//  Created by yan feng on 2023/5/17.
//

import UIKit

class SATScoresTableViewCell: UITableViewCell {
    @IBOutlet weak var numOfTesterLabel: UILabel!
    @IBOutlet weak var readingAvgScoreLabel: UILabel!
    @IBOutlet weak var mathAvgScoreLabel: UILabel!
    @IBOutlet weak var writingAvgScoreLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupData(_ model: SATScoresTableViewCellViewModel) {
        numOfTesterLabel.text = model.numOfSatTestTakers
        readingAvgScoreLabel.text = model.satCriticalReadingAvgScore
        mathAvgScoreLabel.text = model.satMathAvgScore
        writingAvgScoreLabel.text = model.satWritingAvgScore
    }
}
