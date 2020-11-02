//
//  ContentView.swift
//  app_place
//
//  Created by juan on 6/2/20.
//  Copyright © 2020 juan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var show = false
    @State var showAsia = true
    @State var showSection = false
    
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.9569171071, green: 0.9609925151, blue: 0.9731147885, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack{
                    Text("Destination")
                        .font(.system(size: 24, weight: .bold))
                    
                    Spacer()

                    Button(action: {
                        print("ssss")
                    }) {
                        Image("user_icon")
                            .renderingMode(.original)
                            .frame(width: 40.0, height: 40.0)
                            .background(Color.white)
                            .clipShape(Circle())
                    }
                }
                .padding(.horizontal)
                
                HStack{
                    
                    HStack{
                        Text("Asia")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(showAsia ? .white : .black)
                    }
                    .frame(width: 96.0, height: 27.0)
                    .background(
                        showAsia ?
                            LinearGradient(
                                gradient: Gradient(
                                    colors:[Color(#colorLiteral(red: 0.0431372549, green: 0.6392156863, blue: 0.9529411765, alpha: 1)), Color(#colorLiteral(red: 0.01176470588, green: 0.7960784314, blue: 0.9843137255, alpha: 1))]),
                                    startPoint: .leading,
                                    endPoint: .trailing) :
                            LinearGradient(
                                gradient: Gradient(
                                    colors: [Color(#colorLiteral(red: 0.9990486503, green: 0.9763767123, blue: 0.9761041999, alpha: 1)), Color(#colorLiteral(red: 0.9990486503, green: 0.9763767123, blue: 0.9761041999, alpha: 1))]),
                                    startPoint: .leading,
                                    endPoint: .trailing)
                    )
                    .cornerRadius(50)
                    .onTapGesture {
                        if !self.showAsia {
                            self.showAsia.toggle()
                            self.show.toggle()
                        }
                    }
                    
                    HStack{
                        Text("America")
                            .font(.system(size: 12, weight: .medium))
                            .foregroundColor(show ? .white : .black)
                    }
                    .frame(width: 96.0, height: 27.0)
                    .background(
                        show ?
                            LinearGradient(
                                gradient: Gradient(
                                    colors:[Color(#colorLiteral(red: 0.0431372549, green: 0.6392156863, blue: 0.9529411765, alpha: 1)), Color(#colorLiteral(red: 0.01176470588, green: 0.7960784314, blue: 0.9843137255, alpha: 1))]),
                                    startPoint: .leading,
                                    endPoint: .trailing) :
                            LinearGradient(
                                gradient: Gradient(
                                    colors: [Color(#colorLiteral(red: 0.9990486503, green: 0.9763767123, blue: 0.9761041999, alpha: 1)), Color(#colorLiteral(red: 0.9990486503, green: 0.9763767123, blue: 0.9761041999, alpha: 1))]),
                                    startPoint: .leading,
                                    endPoint: .trailing)
                    )
                    .cornerRadius(50)
                    .onTapGesture {
                        
                        if !self.show {
                            self.show.toggle()
                            self.showAsia.toggle()
                        }
                    }
                }

                if self.showAsia {
                    DestinationView(destination: destinationAsia[0])
                } else if self.show {
                    DestinationView(destination: destinationAmerica[0])
                }

            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Places: Identifiable{
    var id = UUID()
    var image: String
    var title: String
    var country: String
    var description: String
    @State var like: Bool
}


struct Destination: Identifiable {
    var id = UUID()
    var image_detail: String
    var city: String
    var country: String
    var places: [Places] = []
}

let destinationAsia = [
    Destination(
        image_detail: "image",
        city: "Taj Majal",
        country: "Republic of India",
        places: [
            Places(
                image: "favorite_place",
                title: "Tokio",
                country: "Japan",
                description: "Santorini is the world best shining city. Every year lot of traveler visited here",
                like: false
            ),
            Places(
                image: "favorite_place",
                title: "Pekin",
                country: "Chinese",
                description: "Santorini is the world best shining city. Every year lot of traveler visited here",
                like: true
            ),
            Places(
                image: "favorite_place",
                title: "Lapand sket hill",
                country: "Republic of India",
                description: "Santorini is the world best shining city. Every year lot of traveler visited here",
                like: false
            ),
        ]
    ),
 ]

let destinationAmerica = [
    Destination(
        image_detail: "image",
        city: "Lima",
        country: "Peru",
        places: [
            Places(
                image: "favorite_place",
                title: "Lima",
                country: "Peru",
                description: "Santorini is the world best shining city. Every year lot of traveler visited here",
                like: true
            ),
            Places(
                image: "favorite_place",
                title: "Rio de Janeiro",
                country: "Brazil",
                description: "Santorini is the world best shining city. Every year lot of traveler visited here",
                like: false
            ),
            Places(
                image: "favorite_place",
                title: "Buenos Aires",
                country: "Aregentina",
                description: "Santorini is the world best shining city. Every year lot of traveler visited here",
                like: true
            ),
        ]
    ),
]
