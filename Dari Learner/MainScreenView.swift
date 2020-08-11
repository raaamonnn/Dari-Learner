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
                    Image("Background")
                        .resizable()
                        .edgesIgnoringSafeArea([.top,.bottom])
                    
                    VStack
                        {
                            
                            HStack{
                                Spacer()
                                
                                Text("Dari Learner")
                                    .padding(.leading)
                                    .foregroundColor(Color.white)
                                
                                Spacer()
                                
                                Image("gearshape.fill").imageScale(.large)
                                    .padding(.trailing)
                                    .foregroundColor(Color.white)
                            }
                            
                            Spacer()
                            
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
                                
                            }
                            Spacer()
                    }
                    
                }
                
        }  .edgesIgnoringSafeArea([.top,.bottom])
        
    }
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
