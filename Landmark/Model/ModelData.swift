//
//  ModelData.swift
//  Landmark
//
//  Created by Ashika Shetty on 01/08/23.
//

import Foundation
import Combine

func loadData<T: Decodable>(_ fileName: String) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("\(fileName) not found")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("could not load the data")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("decoding failed")
    }
}

final class ModelData: ObservableObject {
    @Published var landMarks: [Landmark] = loadData("landmarkData.json")
}
