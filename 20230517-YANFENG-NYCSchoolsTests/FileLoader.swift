//
//  FileLoader.swift
//  20230517-YANFENG-NYCSchoolsTests
//
//  Created by yan feng on 2023/5/19.
//

import Foundation

struct FileLoader {
    static func readDataFromFile<T: Codable>(at filePath: String) -> T {
        let bundle = Bundle.main
        guard let path = bundle.path(forResource: filePath, ofType: "json") else {
            fatalError("FileLoader.readDataFromFile(at \(filePath): No file found at path.")
        }
        
        guard let data = try? Data(contentsOf: URL(fileURLWithPath: path)) else {
            fatalError("FileLoader.readDataFromFile(at \(filePath): Unable convert the content into data.")
        }
        
        do {
            let model = try JSONDecoder().decode(T.self, from: data)
            return model
        } catch {
            fatalError("FileLoader.readDataFromFile(at \(filePath): Unable parse JSON data from file.")
        }
    }
}
