//
//  EndPointTests.swift
//  20230517-YANFENG-NYCSchoolsTests
//
//  Created by yan feng on 2023/5/18.
//

import XCTest
@testable import _0230517_YANFENG_NYCSchools

class EndPointTests: XCTestCase {
    var sut: EndPoint!

    override func setUp() {
        super.setUp()
        sut = EndPoint.baseURL
    }

    func testSuccessfulError() {
        sut = EndPoint.baseURL
        XCTAssertNotNil(sut.rawValue, "Base URL should be there.")
        sut = EndPoint.school
        XCTAssertNotNil(sut.rawValue, "School should be there.")
        sut = EndPoint.sat
        XCTAssertNotNil(sut.rawValue, "SAT should be there.")
        sut = EndPoint.limit
        XCTAssertNotNil(sut.rawValue, "Limit should be there.")
        sut = EndPoint.schoolName
        XCTAssertNotNil(sut.rawValue, "School name should be there.")
        sut = EndPoint.dbn
        XCTAssertNotNil(sut.rawValue, "dbn should be there.")
    }
    
    func testFailureError() {
        sut = EndPoint.baseURL
        XCTAssertNotEqual(sut.rawValue, "empty", "Base URL shouldn't be empty.")
        sut = EndPoint.school
        XCTAssertNotEqual(sut.rawValue, "empty", "School shouldn't be empty.")
        sut = EndPoint.sat
        XCTAssertNotEqual(sut.rawValue, "empty", "SAT shouldn't be empty.")
        sut = EndPoint.limit
        XCTAssertNotEqual(sut.rawValue, "empty", "Limit shouldn't be empty.")
        sut = EndPoint.schoolName
        XCTAssertNotEqual(sut.rawValue, "empty", "School name shouldn't be empty.")
        sut = EndPoint.dbn
        XCTAssertNotEqual(sut.rawValue, "empty", "dbn shouldn't be empty.")

    }

    override func tearDown() {
        super.tearDown()
        sut = nil
    }
}

