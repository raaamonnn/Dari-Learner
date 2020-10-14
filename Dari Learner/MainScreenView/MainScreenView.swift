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
    @State var settingsClicked: Bool = false
    @State var dim:Bool = false
    
    @State var language: String = "Language: English -> Dari"
    @State var music: String = "Music: Off"
    var body: some View {
        
        NavigationView
        {
            
            ZStack{
                Background
                VStack(alignment: .leading){
                    Button(action: {
                        if self.language == "Language: English -> Dari"{
                            //TODO: in future need to actually change the quiz code around too to make it Dari->English
                            self.language = "Language: Dari -> English"
                        }
                        else{
                            self.language = "Language: English -> Dari"
                        }
                    }) {
                        Text(self.language).bold().font(.headline).foregroundColor(.secondary)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(40)
                    
                    Button(action: {
                        if self.music == "Music: Off"{
                            //in future need to actually add music
                            self.music = "Music: On"
                        }
                        else{
                            self.music = "Music: Off"
                        }
                    }) {
                        Text(self.music).bold().font(.headline).foregroundColor(.secondary)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(40)
                    Spacer()
                }
                .padding(.init(top: 100, leading: 0, bottom: 0, trailing: 0))
                .opacity(self.dim ? 1 : 0)
                .disabled(!self.dim)
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
                    .opacity(self.dim ? 0 : 1)
                    .disabled(self.dim)
                    
                    Spacer()//center button 2
                }
                
            }
            .animation(.easeInOut) //animates everything on the screen
        }
        
    }
    
    
    
    
    //MARK: View Components
    
    var Background: some View {
        Image("Background")
            .resizable()
            .edgesIgnoringSafeArea([.top,.bottom])
    }
    
    var Header: some View {
        HStack(spacing: 0){
            Spacer()
            
            Text("Dari Learner")
                .padding(.leading, 40)
                .font(.largeTitle)
                .foregroundColor(Color.white)
            
            Spacer()
            Button(action: {
                print("Button Tapped")
                settingsClicked.toggle()
                dim.toggle()
            }) {
                Image("gearshape.fill").imageScale(.large)
                    .padding(.trailing)
                    .foregroundColor(Color.white)
            }
        }
        .edgesIgnoringSafeArea(.top)
        .padding(.top)
        
        .navigationBarTitle("")
        .navigationBarHidden(true)
    }
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
