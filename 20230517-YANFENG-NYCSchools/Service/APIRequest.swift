//
//  APIRequest.swift
//  20230517-YANFENG-NYCSchools
//
//  Created by yan feng on 2023/5/17.
//

import Foundation

enum HTTPMethod: String {
    case GET
    case POST
    case PUT
    case DELETE
}

protocol APIRequest {
    var method: HTTPMethod { get }
    var path: EndPoint { get }
    var parameters: [EndPoint: String]? { get }
    var body: [String: Any]? { get }
}

extension APIRequest {
    
    func request() -> URLRequest {
        guard let baseURL = URL(string: EndPoint.baseURL.rawValue) else {
            fatalError("APIRequest.request(with \(EndPoint.baseURL.rawValue)): Unable to create URL from String")
        }
        
        guard var components = URLComponents(url: baseURL.appendingPathComponent(path.rawValue),
                                             resolvingAgainstBaseURL: false)
            else {
                fatalError("APIRequest.request(with \(baseURL)): Unable to create URL components")
        }
        
        if let parameters = parameters {
            components.queryItems = parameters.map {
                URLQueryItem(name: String($0.rawValue), value: String($1))
            }
        }

        guard let url = components.url else {
            fatalError("APIRequest.request(with \(baseURL)): Could not get url")
        }

        var request = URLRequest(url: url)
        
        request.httpMethod = String(describing: method)
        
        if let body = body {
            let httpBody = try? JSONSerialization.data(withJSONObject: body, options: .prettyPrinted)
            request.httpBody = httpBody
        }
        
        let _ = HeaderField.allHeaders.map {
            request.addValue($0.value.rawValue, forHTTPHeaderField: $0.key.rawValue)
        }
        
        return request
    }
}

private enum HeaderField: String {
    case accept = "Accept"
    case contentType = "Content-Type"
    case applicationJSON = "application/json"
    
    static var allHeaders: [Self: Self] {
        var headers = [Self: Self]()
        headers[.accept] = .applicationJSON
        headers[.contentType] = .applicationJSON
        return headers
    }
}
