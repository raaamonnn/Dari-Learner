//
//  MainScreenView.swift
//  Dari Learner
//
//  Created by Ramon Amini on 8/8/20.
//  Copyright © 2020 Ramon Amini. All rights reserved.
//

import SwiftUI

struct MainScreenView: View {
    var body: some View {
        
        NavigationView
            {
                
                ZStack(alignment: .top){
                    Background
                    
                    VStack
                        {
                            Header
                            
                            
                            Spacer() //center button 1
                            
                                Button(action: {
                                    print("Button action")
                                }) {
                                    
                                    
                                    NavigationLink(destination: LearnView()) {
                                        Text("Start Learning\nDari")
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(Color.white)
                                            .font(.largeTitle)
                                            .padding(80)
                                            .background(Color.black.opacity(0.1))
                                            .clipShape(Circle())
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
                .padding(.leading)
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
