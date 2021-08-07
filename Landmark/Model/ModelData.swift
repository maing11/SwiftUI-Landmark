//
//  ModelData.swift
//  Landmark
//
//  Created by mai ng on 8/6/21.
//

import Foundation


var landmarks: [Landmark] = load("landmarkData.json")
// Load method that fetches JSON data with a given name from the app's main bundle
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard  let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Coundn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
        
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
        
    } catch {
        fatalError("Couldn't parse \(filename) as\(T.self): =\n\(error)")
    }
}
