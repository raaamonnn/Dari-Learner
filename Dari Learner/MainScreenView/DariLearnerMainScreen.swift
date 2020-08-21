//
//  DariLearnerMainScreen.swift
//  Dari Learner
//
//  Created by Ramon Amini on 8/8/20.
//  Copyright © 2020 Ramon Amini. All rights reserved.
//

import SwiftUI

struct DariLearnerMainScreen: View {
    @State var showSplash = true
    
    
    var body: some View {
        
        
        ZStack{
            MainScreenView()
            SplashScreen()
                .opacity(showSplash ? 1 : 0)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        withAnimation() {
                            self.showSplash = false
                            
                        }
                        
                        
                    }
            }
            
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DariLearnerMainScreen()
    }
}
