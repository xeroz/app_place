//
//  DetailView.swift
//  app_place
//
//  Created by juan on 11/1/20.
//  Copyright © 2020 juan. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var trail: Trail
    
    var body: some View {
        VStack {
            Text(trail.name).font(.title)
                    
            HStack {
                Text("\(trail.location) - \(String(format: "%.1f miles", trail.distance))")
            }
                    
            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(trail: hikingTrails[0])
    }
}
