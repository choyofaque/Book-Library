//
//  Library.swift
//  Book Library
//
//  Created by Manuel Streit on 15.02.22.
//

import Foundation


class Library: Decodable, Identifiable, ObservableObject {
    
    var title:String
    var author:String
    var image:String
    var isFavourite:Bool
    var currentPage:Int
    var rating:Int
    var id:Int
    var content:[String]
 
}
