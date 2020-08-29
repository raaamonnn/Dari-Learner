//
//  MainScreenView.swift
//  Dari Learner
//
//  Created by Ramon Amini on 8/8/20.
//  Copyright © 2020 Ramon Amini. All rights reserved.
//

import SwiftUI

struct MainScreenView: View {
    @State var dynamicCircleSize: CGFloat = 100
    var body: some View {
        
        NavigationView
            {
                
                ZStack{
                    Background
                    
                    VStack
                        {
                            Header
                            
                            Spacer() //center button 1
                            
                            Button(action: {
                                print("Button action")
                            }) {
                                
                                
                                NavigationLink(destination: LearnView()) {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 200)
                                            .fill(Color.black)
                                            .shadow(color: Color.black, radius: 20, y: 5)
                                            .opacity(0.5)
                                            .aspectRatio(contentMode: .fit)
                                            .padding(50)
                                        Text("Start Learning\nDari")
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(Color.white)
                                            .font(.largeTitle)
                                        
                                        
                                    }
                                        .transition(.opacity)
                                }
                            }.padding(.bottom, 50) //to even out spacing for header
                            
                            Spacer()//center button 2
                    }.edgesIgnoringSafeArea([.top,.bottom])
                    
                }
                
        }
        
    }
    
    
    
    
    //MARK: View Components
    
    var Background: some View {
        Image("Background")
            .resizable()
            .edgesIgnoringSafeArea([.top,.bottom])
    }
    
    var Header: some View {
        HStack{
            Spacer()
            
            Text("Dari Learner")
                .padding(.leading, 40)
                .font(.largeTitle)
                .foregroundColor(Color.white)
            
            Spacer()
            
            Image("gearshape.fill").imageScale(.large)
                .padding(.trailing)
                .foregroundColor(Color.white)
        }.padding(.top, 50)
    }
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
