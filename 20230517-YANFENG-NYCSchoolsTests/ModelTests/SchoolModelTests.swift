//
//  SchoolModelTests.swift
//  20230517-YANFENG-NYCSchoolsTests
//
//  Created by yan feng on 2023/5/19.
//

import XCTest

class SchoolModelTests: XCTestCase {
    var sut: School!

    override func setUp() {
        super.setUp()
        sut = School()
    }

    func testSuccessfulSchool() {
        sut = School(dbn: "dbn", schoolName: "school_name", overviewParagraph: "overviewParagraph", location: "location")
        XCTAssertNotNil(sut, "School object should be there.")
        XCTAssertNotNil(sut.schoolName, "schoolName should be there.")
        XCTAssertEqual(sut.schoolName, "school_name", "schoolName should be same.")
        XCTAssertNotNil(sut.location, "location should be there.")
        XCTAssertEqual(sut.location, "location", "location should be same.")
        XCTAssertNotNil(sut.overviewParagraph, "OverviewParagraph should be there.")
        XCTAssertEqual(sut.overviewParagraph, "overviewParagraph", "OverviewParagraph should be same.")
    }
    
    func testFailureSchool() {
        sut = School(dbn: "dbn1", schoolName: "school_name_1", overviewParagraph: "overviewParagraph_1", location: "location_1")
        XCTAssertNotNil(sut, "School object should be there.")
        XCTAssertNotNil(sut.schoolName, "schoolName should be there.")
        XCTAssertNotEqual(sut.schoolName, "school_name", "schoolName should be same.")
        XCTAssertNotNil(sut.location, "location should be there.")
        XCTAssertNotEqual(sut.location, "location", "location should be same.")
        XCTAssertNotNil(sut.overviewParagraph, "OverviewParagraph should be there.")
        XCTAssertNotEqual(sut.overviewParagraph, "overviewParagraph", "OverviewParagraph should be same.")
    }

    override func tearDown() {
        super.tearDown()
        sut = nil
    }
}
