//
//  PlaceDetailView.swift
//  app_place
//
//  Created by juan on 9/5/20.
//  Copyright © 2020 juan. All rights reserved.
//

import SwiftUI

struct PlaceDetailView: View {
    var body: some View {
        ZStack{
            Color(#colorLiteral(red: 0.9569171071, green: 0.9609925151, blue: 0.9731147885, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            ScrollView{
                VStack{
                    HStack{
                        Text("Place Details")
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
                    
                    VStack{
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(spacing: -30){
                                Image("place_detail_1")
                                Image("place_detail_2")
                                Image("place_detail_1")
                            }
                        }
                        
                        HStack{
                            Text("Helsinki")
                                .font(.system(size: 24, weight: .bold))
                            Spacer()
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 15)
                        
                        HStack{
                            Text("Santorini is the world best shining city. every year lot of traveler visited here")
                                .frame(width: 300, alignment: .leading)
                                .padding(.horizontal)
                            Spacer()
                        }
                    }
                    .padding(.bottom, 30)

                    VStack(spacing: 0){
                        HStack{
                            Text("Pictures")
                                .font(.system(size: 24, weight: .bold))
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        HStack(spacing: -10){
                            Image("picture_1")
                            VStack(spacing: -5){
                                Image("picture_2")
                                Image("picture_3")
                            }
                        }
                    }
                }
            }
            
        }
    }
}

struct PlaceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceDetailView()
    }
}
