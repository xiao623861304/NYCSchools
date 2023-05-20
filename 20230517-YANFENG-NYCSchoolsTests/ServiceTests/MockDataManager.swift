//
//  MockDataManager.swift
//  20230517-YANFENG-NYCSchoolsTests
//
//  Created by yan feng on 2023/5/18.
//

import Foundation
import XCTest
@testable import _0230517_YANFENG_NYCSchools

class MockDataManager<U: Codable>: Fetchable {

    var handler: ((U?, NetworkError?) -> ())!
    var isDataFetched = false
    var model: U? = nil

    func fetchWithSuccess() {
        handler(model, nil)
    }

    func fetchWithError(_ error: NetworkError?) {
        handler(nil, error)
    }

    func fetchData<T: Codable>(with request: APIRequest,
                               handler: @escaping (_ data: T?, _ error: NetworkError?) -> ()) {
        isDataFetched = true
        self.handler = { (data: U?, error: NetworkError?) in
            handler(data as? T, error)
        }
    }
}
