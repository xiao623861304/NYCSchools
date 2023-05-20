//
//  APIClient.swift
//  20230517-YANFENG-NYCSchools
//
//  Created by yan feng on 2023/5/17.
//

import Foundation

struct APIClient {
    
    static func send<T: Codable>(_ urlRequest: APIRequest,
                                 completion: @escaping (_ result:  Result<T, NetworkError>) -> ()) {
        
        let request = urlRequest.request()
        let configuration = URLSessionConfiguration.default
        
        configuration.timeoutIntervalForRequest = 30
        
        let session = URLSession(configuration: configuration)
        
        
        let task = session.dataTask(with: request) { (data, response, error) in
            
            if let error = error {
                completion(Result.failure(NetworkError.genericError(error.localizedDescription)))
                return
            }
            
            guard let data = data else {
                completion(Result.failure(NetworkError.noData))
                return
            }
            
            do {
                let model = try JSONDecoder().decode(T.self, from: data)
                completion(Result.success(model))
            } catch {
                completion(Result.failure(NetworkError.jsonParse))
            }
        }
        
        task.resume()
        
    }
}
