//
//  DestinationView.swift
//  app_place
//
//  Created by juan on 8/16/20.
//  Copyright © 2020 juan. All rights reserved.
//

import SwiftUI

struct DestinationView: View {

    var destination: Destination
    @State var like = false
    
    var body: some View {
        VStack{
            HStack{
                VStack{
                    Spacer()
                    HStack{
                        VStack{
                            Text(destination.city)
                                .font(.system(size: 14, weight: .bold))
                                .frame(width: 150, alignment: .leading)
                            
                            Text(destination.country)
                                .font(.system(size: 9, weight: .medium))
                                .foregroundColor(Color(#colorLiteral(red: 0.4391762614, green: 0.4392417073, blue: 0.4391556382, alpha: 1)))
                                .frame(width: 150, alignment: .leading)
                        }

                        Spacer()

                        Image("user_icon")
                            .renderingMode(.original)
                            .frame(width: 40.0, height: 40.0)
                            .background(Color.white)
                            .clipShape(Circle())
                            .offset(x: 75)
                        
                            
                        Image("user_icon")
                            .renderingMode(.original)
                            .frame(width: 40.0, height: 40.0)
                            .background(Color.white)
                            .clipShape(Circle())
                            .offset(x: 45.5)
                        
                        Color(#colorLiteral(red: 0.2791154385, green: 0.5945160389, blue: 0.9288005233, alpha: 0.5))
                            .frame(width: 35.0, height: 35.0)
                            .clipShape(Circle())
                            .overlay(
                                Text("10 +")
                                    .font(.system(size: 8, weight: .semibold))
                                    .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            )
                        
                    }
                    .padding(.bottom)
                    .padding(.horizontal, 30)

                }
                .frame(width: 335.0, height: 247.0)
                .background(Color(#colorLiteral(red: 0.9990486503, green: 0.9763767123, blue: 0.9761041999, alpha: 1)))
                .cornerRadius(20)
                .overlay(
                    Image("image")
                        .offset(y: -40)
                    
                )
            }
            .padding(.top, 50)
            
            HStack{
                Text("Favorite Places")
                    .font(.system(size: 24, weight: .bold))
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top, 30)
            
            ScrollView{
                ForEach(destination.places.indices, id: \.self){index in
                    VStack{
                        HStack{
                            Image(self.destination.places[index].image)
                                .offset(x: -30)
                            
                            VStack{
                                Text(self.destination.places[index].title)
                                    .font(.system(size: 12, weight: .semibold))
                                    .frame(width: 150, alignment: .leading)
                                
                                Text(self.destination.places[index].country)
                                    .font(.system(size: 8, weight: .regular))
                                    .frame(width: 150, alignment: .leading)
                                    .foregroundColor(Color(#colorLiteral(red: 0.5878872275, green: 0.7603010535, blue: 0.9592834115, alpha: 1)))

                                Text(self.destination.places[index].description)
                                    .frame(width: 150, alignment: .leading)
                                    .font(.system(size: 8, weight: .regular))
                                    .padding(.top, 10)
                                
                                Spacer()
                            }
                            .padding(.top, 5)
                            .offset(x: -25)
                            
                            Button(action: {
                                self.destination.places[index].like.toggle()
                            }) {
                                if self.destination.places[index].like {

                                    Image(systemName: "heart.fill")
                                        .foregroundColor(Color.red)

                                } else {
                                    Image(systemName: "heart")
                                        .foregroundColor(Color.gray)
                                }
                            }
                            
                            
                        }
                        .frame(width: 320.0, height: 80.0)
                        .background(Color(#colorLiteral(red: 0.9999160171, green: 1, blue: 0.9998720288, alpha: 1)))
                        .cornerRadius(10)
                    }
                    .padding(.bottom, 5)
                }
            }
        }
    }
}

struct DestinationView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationView(destination: destinationAsia[0])
    }
}
