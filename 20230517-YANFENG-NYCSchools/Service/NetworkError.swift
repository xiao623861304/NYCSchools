//
//  NetworkError.swift
//  20230517-YANFENG-NYCSchools
//
//  Created by yan feng on 2023/5/17.
//

import Foundation

enum NetworkError: Error, CustomStringConvertible {
    case request
    case server
    case noNetwork
    case invalidURL(URL)
    case noData
    case jsonParse
    case genericError(Any)
    
    var description: String {
        switch self {
        case .request:
            return "The request failed due to an error in the request."
        case .server:
            return "The request failed due to a server-side error."
        case .noNetwork:
            return "It seems the device is not connected to internet. Please check your internet connection."
        case .invalidURL(let url):
            return "Invalid URL: \(url)."
        case .noData:
            return "No Data received from the server."
        case .jsonParse:
            return "There is an error occured while parsing JSON data."
        case .genericError(let any):
            return "Error occured: \(any)"
        }
    }
}
