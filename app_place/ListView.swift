//
//  ListView.swift
//  app_place
//
//  Created by juan on 11/1/20.
//  Copyright © 2020 juan. All rights reserved.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        
        NavigationView {
            ScrollView{
                ForEach(hikingTrails) { trail in
                    NavigationLink(destination: DetailView(trail: trail)) {
                        TrailRow(trail: trail)
                    }
                }
                .navigationBarHidden(true)
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

struct TrailRow: View {
    var trail: Trail
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(trail.name)
                Text(trail.location).font(.subheadline).foregroundColor(.gray)
            }
            Spacer()
            Text(String(format: "%.1f miles", trail.distance))
        }
    }
}

struct Trail: Identifiable {
    var id = UUID()
    var name: String
    var location: String
    var distance: Double
}


let hikingTrails = [
    Trail(name: "Stanford Dish", location: "Palo Alto", distance: 3.9),
    Trail(name: "Edgewood", location: "Redwood City", distance: 3.2),
    Trail(name: "Mission Peak", location: "Fremont", distance: 7.1),
    Trail(name: "Big Basin", location: "Boulder Creek", distance: 4.3),
    Trail(name: "Alum Rock", location: "Milpitas", distance: 5.7),
]
