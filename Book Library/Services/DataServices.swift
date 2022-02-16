//
//  DataServices.swift
//  Book Library
//
//  Created by Manuel Streit on 15.02.22.
//

import Foundation

class DataServices {
    
    static func getLocalData() -> [Library] {
        
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        guard pathString != nil else {
            return [Library]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do {
                
                let libraryData = try decoder.decode([Library].self, from: data)
                
                return libraryData
            }
            
            catch {
                
                print(error)
            }
        }
        
        catch {
            
            print(error)
            
        }
        
        return [Library]()
    }
}
