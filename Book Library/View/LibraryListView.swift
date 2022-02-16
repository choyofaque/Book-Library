//
//  LibraryListView.swift
//  Book Library
//
//  Created by Manuel Streit on 15.02.22.
//

import SwiftUI

struct LibraryListView: View {
    
    var lib:Library
    
    var body: some View {
        
        
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white)
                .shadow(radius: 10)
            VStack {
                HStack {
                    Text(lib.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 3.0)
                        
                    Spacer()
                    if lib.isFavourite == true {
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                    }
                    else {
                        Image(systemName: "star")
                            .foregroundColor(Color.blue)
                    }
              
                }
                HStack {
                    Text(lib.author)
                        .fontWeight(.thin)
                    Spacer()
                }
                Image(lib.image)
                    .resizable()
                    .clipped()
                    .scaledToFill()
            }
            .padding()
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

