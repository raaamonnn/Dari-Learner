//
//  SplashScreen.swift
//  Dari Learner
//
//  Created by Ramon Amini on 8/8/20.
//  Copyright © 2020 Ramon Amini. All rights reserved.
//

import SwiftUI

struct SplashScreen: View {
    
    var body: some View {
        ZStack{
            Image("MainScreenBackground")
                .resizable()
                .edgesIgnoringSafeArea([.top,.bottom])
            
            Text("Dari Learner")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .lineLimit(nil)
                .multilineTextAlignment(.center)
        }
        
        
    }
}

extension SplashScreen{
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
