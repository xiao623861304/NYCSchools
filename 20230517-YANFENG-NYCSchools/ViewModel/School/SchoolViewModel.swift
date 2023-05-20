//
//  SchoolViewModel.swift
//  20230517-YANFENG-NYCSchools
//
//  Created by yan feng on 2023/5/17.
//

import Foundation

class SchoolViewModel {
    private var dataManager: Fetchable
    var isLoading = Observable<Bool>(false)
    var error = Observable<NetworkError?>(nil)
    var shouldReloadData = Observable<Bool>(false)
    var schoolsDict = Observable<[String: [SchoolTableViewCellViewModel]]>([:])
    var schoolNames = Observable<[String]>([])

    init(dataManager: Fetchable = DataManager()) {
        self.dataManager = dataManager
    }

    func fetchSchoolData() {
        let request = SchoolRequest()
        isLoading.value = true
        dataManager.fetchData(with: request) { [weak self] (schools: Schools?, error: NetworkError?) in
            guard let self = self else { return }
            self.isLoading.value = false
            if let schools = schools, schools.count > 0 {
                self.schoolsDict.value = self.getSchoolsBySchoolName(schools: schools)
                self.schoolNames.value.append(contentsOf: self.schoolsDict.value.keys.sorted())
            } else if let error = error {
                self.error.value = error
            }
            self.shouldReloadData.value = true
        }
    }

    private func getSchoolsBySchoolName(schools: Schools) -> [String: [SchoolTableViewCellViewModel]] {
        var schoolsDict: [String: [SchoolTableViewCellViewModel]] = [:]
        for school in schools {
            if let firstLetterOfSchoolName = school.schoolName?.first {
                if let _ = schoolsDict[String(firstLetterOfSchoolName)] {
                    schoolsDict[String(firstLetterOfSchoolName)]?.append(mapCellData(school))
                } else {
                    schoolsDict[String(firstLetterOfSchoolName)] = [mapCellData(school)]
                }
            }
        }
        return schoolsDict
    }

    private func mapCellData(_ school: School) -> SchoolTableViewCellViewModel {
        return SchoolTableViewCellViewModel(school)
    }
}

private struct SchoolRequest: APIRequest {
    var method: HTTPMethod = .GET
    var path: EndPoint = .school
    var parameters: [EndPoint: String]? = [:]
    var body: [String: Any]? = nil
}
