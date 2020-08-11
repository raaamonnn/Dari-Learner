//
//  LearnView.swift
//  Dari Learner
//
//  Created by Ramon Amini on 8/10/20.
//  Copyright © 2020 Ramon Amini. All rights reserved.
//

import SwiftUI

struct LearnView: View {
    var body: some View {
        ZStack(alignment: .top){
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea([.top,.bottom])
        }
    }
}

struct LearnView_Previews: PreviewProvider {
    static var previews: some View {
        LearnView()
    }
}
