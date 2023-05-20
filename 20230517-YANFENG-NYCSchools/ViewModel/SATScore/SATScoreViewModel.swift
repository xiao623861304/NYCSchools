//
//  SATScoreViewModel.swift
//  20230517-YANFENG-NYCSchools
//
//  Created by yan feng on 2023/5/18.
//

import Foundation

class SATScoreViewModel {
    private var dataManager: Fetchable
    var isLoading = Observable<Bool>(false)
    var error = Observable<NetworkError?>(nil)
    var shouldReloadData = Observable<Bool>(false)
    var scoreList = Observable<[SATScoresTableViewCellViewModel]>([])
    var headerViewModel: SchoolTableViewCellViewModel?

    init(dataManager: Fetchable = DataManager(), model: SchoolTableViewCellViewModel?) {
        self.dataManager = dataManager
        self.headerViewModel = model
    }

    func fetchScoreData() {
        var request = SchoolRequest()
        guard let dbn = headerViewModel?.dbn else {
            error.value = NetworkError.genericError("missing the parameter")
            return
        }
        request.parameters = [.dbn: dbn]

        isLoading.value = true
        dataManager.fetchData(with: request) { [weak self] (avgScores: AvgScores?, error: NetworkError?) in
            guard let self = self else { return }
            self.isLoading.value = false
            if let avgScores = avgScores {
                self.mapCellData(avgScores)
            } else if let error = error {
                self.error.value = error
            }
            self.shouldReloadData.value = true
        }
    }

    private func mapCellData(_ avgScores: AvgScores) {
        scoreList.value = avgScores.compactMap({ SATScoresTableViewCellViewModel($0)} )
    }
}

private struct SchoolRequest: APIRequest {
    var method: HTTPMethod = .GET
    var path: EndPoint = .sat
    var parameters: [EndPoint: String]? = [:]
    var body: [String: Any]? = nil
}
