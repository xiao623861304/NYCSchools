//
//  SATScoreModelTests.swift
//  20230517-YANFENG-NYCSchoolsTests
//
//  Created by yan feng on 2023/5/19.
//

import XCTest

class SATScoreModelTests: XCTestCase {
    var sut: AvgScore!

    override func setUp() {
        super.setUp()
        sut = AvgScore()
    }

    func testSuccessfulSATScore() {
        sut = AvgScore(dbn: "dbn",
                       schoolName: "school_name",
                       numOfSatTestTakers: "20",
                       satCriticalReadingAvgScore: "100",
                       satMathAvgScore: "200",
                       satWritingAvgScore: "300")
        XCTAssertNotNil(sut, "SATScore object should be there.")
        XCTAssertNotNil(sut.dbn, "SATScore dbn should be there.")
        XCTAssertEqual(sut.dbn, "dbn", "SATScore numOfSatTestTakers should be same.")
        XCTAssertNotNil(sut.schoolName, "SATScore schoolName should be there.")
        XCTAssertEqual(sut.schoolName, "school_name", "SATScore schoolName should be same.")
        XCTAssertNotNil(sut.numOfSatTestTakers, "SATScore numOfSatTestTakers should be there.")
        XCTAssertEqual(sut.numOfSatTestTakers, "20", "SATScore numOfSatTestTakers should be same.")
        XCTAssertNotNil(sut.satCriticalReadingAvgScore, "SATScore satCriticalReadingAvgScore should be there.")
        XCTAssertEqual(sut.satCriticalReadingAvgScore, "100", "SATScore satCriticalReadingAvgScore should be same.")
        XCTAssertNotNil(sut.satMathAvgScore, "SATScore satMathAvgScore should be there.")
        XCTAssertEqual(sut.satMathAvgScore, "200", "SATScore satMathAvgScore should be same.")
        XCTAssertNotNil(sut.satWritingAvgScore, "SATScore satWritingAvgScore should be there.")
        XCTAssertEqual(sut.satWritingAvgScore, "300", "SATScore satWritingAvgScore should be same.")
    }
    
    func testFailureSATScore() {
        sut = AvgScore(dbn: "dbn1",
                       schoolName: "school_name_1",
                       numOfSatTestTakers: "21",
                       satCriticalReadingAvgScore: "101",
                       satMathAvgScore: "201",
                       satWritingAvgScore: "301")
        XCTAssertNotNil(sut, "SATScore object should be there.")
        XCTAssertNotNil(sut.dbn, "SATScore dbn should be there.")
        XCTAssertNotEqual(sut.dbn, "dbn", "SATScore numOfSatTestTakers should be same.")
        XCTAssertNotNil(sut.schoolName, "SATScore schoolName should be there.")
        XCTAssertNotEqual(sut.schoolName, "school_name", "SATScore schoolName should be same.")
        XCTAssertNotNil(sut.numOfSatTestTakers, "SATScore numOfSatTestTakers should be there.")
        XCTAssertNotEqual(sut.numOfSatTestTakers, "20", "SATScore numOfSatTestTakers should be same.")
        XCTAssertNotNil(sut.satCriticalReadingAvgScore, "SATScore satCriticalReadingAvgScore should be there.")
        XCTAssertNotEqual(sut.satCriticalReadingAvgScore, "100", "SATScore satCriticalReadingAvgScore should be same.")
        XCTAssertNotNil(sut.satMathAvgScore, "SATScore satMathAvgScore should be there.")
        XCTAssertNotEqual(sut.satMathAvgScore, "200", "SATScore satMathAvgScore should be same.")
        XCTAssertNotNil(sut.satWritingAvgScore, "SATScore satWritingAvgScore should be there.")
        XCTAssertNotEqual(sut.satWritingAvgScore, "300", "SATScore satWritingAvgScore should be same.")    }

    override func tearDown() {
        super.tearDown()
        sut = nil
    }
}
