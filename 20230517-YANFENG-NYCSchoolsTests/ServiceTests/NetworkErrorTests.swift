//
//  NetworkErrorTests.swift
//  20230517-YANFENG-NYCSchoolsTests
//
//  Created by yan feng on 2023/5/18.
//

import XCTest
@testable import _0230517_YANFENG_NYCSchools

class NetworkErrorTests: XCTestCase {

    private var sut: NetworkError!

    override func setUp() {
        super.setUp()
        sut = NetworkError.request
    }
 
    func testSuccessfulError() {
        sut = NetworkError.request
        XCTAssertNotNil(sut.description, "Request error should be there.")
        sut = NetworkError.server
        XCTAssertNotNil(sut.description, "Server error should be there.")
        let url = URL(string: "https://www.domain.com")!
        sut = NetworkError.invalidURL(url)
        XCTAssertNotNil(sut.description, "URL invalid message should be there.")
        sut = NetworkError.noData
        XCTAssertNotNil(sut.description, "No data message should be there.")
        sut = NetworkError.jsonParse
        XCTAssertNotNil(sut.description, "JSON parsing message should be there.")
        sut = NetworkError.genericError("Error")
        XCTAssertNotNil(sut.description, "Generic error message should be there.")
    }
    
    func testFailureError() {
        sut = NetworkError.request
        XCTAssertNotEqual(sut.description, "empty", "Request error shouldn't be empty.")
        sut = NetworkError.server
        XCTAssertNotEqual(sut.description, "empty", "Server error shouldn't be empty.")
        let url = URL(string: "https://www.domain.com")!
        sut = NetworkError.invalidURL(url)
        XCTAssertNotEqual(sut.description, "empty", "URL invalid message shouldn't be empty.")
        sut = NetworkError.noData
        XCTAssertNotEqual(sut.description, "empty", "No data message shouldn't be empty.")
        sut = NetworkError.jsonParse
        XCTAssertNotEqual(sut.description, "empty", "JSON parsing message shouldn't be empty.")
        sut = NetworkError.genericError("Error")
        XCTAssertNotEqual(sut.description, "empty", "Generic error message shouldn't be empty.")
    }

    override func tearDown() {
        super.tearDown()
        sut = nil
    }
}
