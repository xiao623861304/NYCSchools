//
//  SATScoreModel.swift
//  20230517-YANFENG-NYCSchools
//
//  Created by yan feng on 2023/5/18.
//

import Foundation

typealias AvgScores = [AvgScore]

// MARK: - AvgScore
struct AvgScore: Codable {
    var dbn: String?
    var schoolName: String?
    var numOfSatTestTakers: String?
    var satCriticalReadingAvgScore: String?
    var satMathAvgScore: String?
    var satWritingAvgScore: String?

    enum CodingKeys: String, CodingKey {
        case dbn
        case schoolName = "school_name"
        case numOfSatTestTakers = "num_of_sat_test_takers"
        case satCriticalReadingAvgScore = "sat_critical_reading_avg_score"
        case satMathAvgScore = "sat_math_avg_score"
        case satWritingAvgScore = "sat_writing_avg_score"
    }
}
