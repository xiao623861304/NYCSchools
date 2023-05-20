//
//  APIRequestTests.swift
//  20230517-YANFENG-NYCSchoolsTests
//
//  Created by yan feng on 2023/5/18.
//

import XCTest
@testable import _0230517_YANFENG_NYCSchools

class APIRequestTests: XCTestCase {

    var sut: APIRequest!

    override func setUp() {
        super.setUp()
        sut = MockRequest()
    }

    func testSuccessfulRequest() {
        let request = sut.request()
        XCTAssertNotNil(request.httpMethod, "HTTP Method should be there.")
        XCTAssertEqual(request.httpMethod, HTTPMethod.GET.rawValue, "HTTP Methods should be same.")
        XCTAssertNotNil(request.url, "URL should be there.")
        XCTAssertEqual(request.url?.absoluteString, "https://data.cityofnewyork.us/resource/s3k6-pzi2.json/?", "URL should be there.")
        XCTAssertNil(request.httpBody, "There is no body for the request.")
        XCTAssertNotNil(request.allHTTPHeaderFields, "Header Fields should be there.")
    }
    
    func testFailureRequest() {
        let request = sut.request()
        XCTAssertNotEqual(request.httpMethod, "empty","HTTP Method shouldn't be empty.")
        XCTAssertNotEqual(request.url?.absoluteString, "empty", "URL shouldn't be empty.")
        XCTAssertNotEqual(request.httpBody, Data(), "Data should be empty")
        XCTAssertNotEqual(request.allHTTPHeaderFields, [:], "Header Fields should not be empty.")
    }

    override func tearDown() {
        super.tearDown()
        sut = nil
    }
}

struct MockRequest: APIRequest {
    var method: HTTPMethod = .GET
    var path: EndPoint = .school
    var parameters: [EndPoint : String]? = [:]
    var body: [String : Any]? = nil
}

struct Model: Codable {}
