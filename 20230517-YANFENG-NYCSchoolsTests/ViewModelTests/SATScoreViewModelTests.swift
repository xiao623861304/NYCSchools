//
//  SATScoreViewModelTests.swift
//  20230517-YANFENG-NYCSchoolsTests
//
//  Created by yan feng on 2023/5/19.
//

import XCTest

class SATScoreViewModelTests: XCTestCase {

    var sut: SATScoreViewModel!
    var dataManager: MockDataManager<AvgScores>!

    override func setUp() {
        super.setUp()
        dataManager = MockDataManager()
        let mockModel = SchoolTableViewCellViewModel(School(dbn: "02M260"))
        sut = SATScoreViewModel(dataManager: dataManager, model: mockModel)
    }

    func testFetchFetchScore() {
        
        //Given
        let emptyModel = AvgScore()
        dataManager.model = [emptyModel]
        
        //When
        sut.fetchScoreData()
        
        //Then
        XCTAssertTrue(dataManager.isDataFetched, "Data should be fetched")
    }
    
    func testFetchTracksFail() {
        
        //Given
        let error = NetworkError.noData
        
        //When
        sut.fetchScoreData()
        dataManager.fetchWithError(error)
        
        //Then
        XCTAssertEqual(sut.error.value?.description, error.description,
                       "Both errors should be equal.")
    }
    
    
    func testSuccessfulFetchScore() {
        
        //Given
        let avgScores: AvgScores = FileLoader.readDataFromFile(at: "mock_SAT_scores_data")
        dataManager.model = avgScores
        let expectation = XCTestExpectation(description: "Reload tableView triggered")
        sut.shouldReloadData.bind { success in
            if success { expectation.fulfill() }
        }

        //When
        sut.fetchScoreData()
        dataManager.fetchWithSuccess()

        //Then
        XCTAssertTrue(avgScores.count > 0, "SATScore data should be there.")
        let avgScore = avgScores[0]
        XCTAssertEqual(avgScore.schoolName, "ACADEMY OF URBAN PLANNING", "SATScore School name should be equal.")
        XCTAssertEqual(avgScore.numOfSatTestTakers, "67", "SATScore numOfSatTestTakers should be equal.")
        XCTAssertEqual(avgScore.satCriticalReadingAvgScore, "342", "SATScore satCriticalReadingAvgScore should be equal.")
        XCTAssertEqual(avgScore.satMathAvgScore, "364", "SATScore satMathAvgScore should be equal.")
        XCTAssertEqual(avgScore.satWritingAvgScore, "354", "SATScore satWritingAvgScore should be equal.")
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
        sut.fetchScoreData()
        
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
