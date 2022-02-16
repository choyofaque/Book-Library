//
//  DetailView.swift
//  Book Library
//
//  Created by Manuel Streit on 15.02.22.
//

import SwiftUI

struct DetailView: View {
    
    @EnvironmentObject var detail:Library
    @State var selectedRating = 1
    
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .center, spacing: 10) {
                Text("Buchtitel")
                    .font(.title)
                    .fontWeight(.heavy)
                    
                Spacer()
                Button("Read now!", action: {
                    
                })
                Spacer()
                Image(systemName: "cover1")
                    .resizable()
                    .clipped()
                    .scaledToFit()
                Text("Mark for later")
                Image(systemName: "star")
                Spacer()
                Text("Rate amazing words:")
                Picker("", selection: $selectedRating, content: {
                    Text("1")
                        .tag(1)
                    Text("2")
                        .tag(2)
                    Text("3")
                        .tag(3)
                    Text("4")
                        .tag(4)
                    Text("5")
                        .tag(5)
                })
                    .pickerStyle(SegmentedPickerStyle())
                    
                
            }
            .environmentObject(LibraryModel())
            .padding(.horizontal)
            .frame(width: geo.size.width - 10, height: geo.size.height - 50, alignment: .center)
        }
        

    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
