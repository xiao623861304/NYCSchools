//
//  EndPoint.swift
//  20230517-YANFENG-NYCSchools
//
//  Created by yan feng on 2023/5/17.
//

import Foundation

enum EndPoint: Hashable {
    case baseURL
    case school
    case sat
    case limit
    case schoolName
    case dbn
}

extension EndPoint {
    var rawValue: String {
        switch self {
        case .baseURL:
            return "https://data.cityofnewyork.us/resource/"
        case .school:
            return "s3k6-pzi2.json/"
        case .sat:
            return "f9bf-2cp4.json"
        case .schoolName:
            return "schoolName"
        case .limit:
            return "$limit"
        case .dbn:
            return "dbn"
        }
    }
}
