//
//  SchoolViewModelTests.swift
//  20230517-YANFENG-NYCSchoolsTests
//
//  Created by yan feng on 2023/5/19.
//

import XCTest

class SchoolViewModelTests: XCTestCase {

    var sut: SchoolViewModel!
    var dataManager: MockDataManager<Schools>!

    override func setUp() {
        super.setUp()
        dataManager = MockDataManager()
        sut = SchoolViewModel(dataManager: dataManager)
    }

    func testFetchFetchSchool() {
        
        //Given
        let emptyModel = School()
        dataManager.model = [emptyModel]
        
        //When
        sut.fetchSchoolData()
        
        //Then
        XCTAssertTrue(dataManager.isDataFetched, "Data should be fetched")
    }
    
    func testFetchTracksFail() {
        
        //Given
        let error = NetworkError.noData
        
        //When
        sut.fetchSchoolData()
        dataManager.fetchWithError(error)
        
        //Then
        XCTAssertEqual(sut.error.value?.description, error.description,
                       "Both errors should be equal.")
    }
    
    
    func testSuccessfulFetchSchool() {
        
        //Given
        let schools: Schools = FileLoader.readDataFromFile(at: "mock_schools_data")
        dataManager.model = schools
        let expectation = XCTestExpectation(description: "Reload tableView triggered")
        sut.shouldReloadData.bind { success in
            if success { expectation.fulfill() }
        }
        
        //When
        sut.fetchSchoolData()
        dataManager.fetchWithSuccess()
        
        //Then
        XCTAssertTrue(schools.count > 0, "School data should be there.")
        let school = schools[0]
        XCTAssertEqual(school.schoolName, "Clinton School Writers & Artists, M.S. 260", "School name should be equal.")
        XCTAssertEqual(school.location, "10 East 15th Street, Manhattan NY 10003 (40.736526, -73.992727)", "School location should be equal.")
        XCTAssertEqual(school.dbn, "02M260", "School dbn should be equal.")

        wait(for: [expectation], timeout: 1.0)
    }
    
    func testLoadingStatusWhileFetching() {
        
        //Given
        var loading = false
        let expectation = XCTestExpectation(description: "Loading status updated")
        sut.isLoading.bind { (success) in
            loading = success
            expectation.fulfill()
        }
        
        //When
        sut.fetchSchoolData()
        
        //Assert
        XCTAssert(loading)
        
        //When finished fetching
        dataManager.fetchWithSuccess()
        
        //Assert
        XCTAssertFalse(loading)
        
        wait(for: [expectation], timeout: 1.0)
    }

    override func tearDown() {
        super.tearDown()
        sut = nil
    }
}
