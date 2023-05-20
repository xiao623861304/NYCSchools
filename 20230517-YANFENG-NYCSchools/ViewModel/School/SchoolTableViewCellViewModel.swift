//
//  SchoolTableViewCellViewModel.swift
//  20230517-YANFENG-NYCSchools
//
//  Created by yan feng on 2023/5/18.
//

import Foundation

struct SchoolTableViewCellViewModel {
    var dbn: String?
    var schoolName: String?
    var overviewParagraph: String?
    var location: String?
    var phoneNumber: String?
    var website: String?
    
    init(_ school: School) {
        self.dbn = school.dbn
        self.schoolName = school.schoolName
        self.overviewParagraph = school.overviewParagraph
        self.location = school.location
        self.phoneNumber = school.phoneNumber
        self.website = school.website
    }
}
