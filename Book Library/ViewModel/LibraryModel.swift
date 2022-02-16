//
//  LibraryModel.swift
//  Book Library
//
//  Created by Manuel Streit on 15.02.22.
//

import Foundation

class LibraryModel: ObservableObject {
    
    @Published var library = [Library]()
    
    init() {
        
        self.library = DataServices.getLocalData()
    }
}
