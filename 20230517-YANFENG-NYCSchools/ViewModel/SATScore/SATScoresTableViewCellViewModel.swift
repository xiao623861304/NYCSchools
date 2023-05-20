//
//  SATScoresTableViewCellViewModel.swift
//  20230517-YANFENG-NYCSchools
//
//  Created by yan feng on 2023/5/18.
//

import Foundation

struct SATScoresTableViewCellViewModel {
    var numOfSatTestTakers: String?
    var satCriticalReadingAvgScore: String?
    var satMathAvgScore: String?
    var satWritingAvgScore: String?

    init(_ model: AvgScore) {
        self.numOfSatTestTakers = model.numOfSatTestTakers
        self.satCriticalReadingAvgScore = model.satCriticalReadingAvgScore
        self.satMathAvgScore = model.satMathAvgScore
        self.satWritingAvgScore = model.satWritingAvgScore
    }
}
