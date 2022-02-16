//
//  MainView.swift
//  Book Library
//
//  Created by Manuel Streit on 15.02.22.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var model:LibraryModel
    
    
    var body: some View {
        VStack {
            Text("Book Library")
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            NavigationView {
                ScrollView {
                    LazyVStack(spacing: 10) {
                        ForEach(model.library) { r in
                            NavigationLink(destination: {
                               // DetailView(detail: r)
                                
                            }, label: {
                                LibraryListView(lib: r)
                                
                            })
                        }
                    }
                }
            }
            .environmentObject(LibraryModel())
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(LibraryModel())
    }
}
