//
//  LearnView.swift
//  Dari Learner
//
//  Created by Ramon Amini on 8/10/20.
//  Copyright © 2020 Ramon Amini. All rights reserved.
//

import SwiftUI

struct LearnView: View {
    @ObservedObject var viewModel:LearnViewModel = LearnViewModel()
    
    var body: some View {
        ZStack(alignment: .top){
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea([.top,.bottom])
            
//            Grid(viewModel) ????
            // TODO: wut
            
        }
    }
}
struct quizView: View {
    var answer: LearnModel.Answer
    
    var body: some View{
        GeometryReader { geometry in
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
            }
        }
    }
}
