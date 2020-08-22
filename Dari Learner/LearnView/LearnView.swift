//
//  LearnView.swift
//  Dari Learner
//
//  Created by Ramon Amini on 8/10/20.
//  Copyright © 2020 Ramon Amini. All rights reserved.
//

import SwiftUI
//fix Dari Learner Title and get the actual question to appear
struct LearnView: View {
    @ObservedObject var viewModel:LearnViewModel = LearnViewModel()
    
    var body: some View {
        ZStack{
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea([.top, .bottom])
            
            
            
            VStack{
                Text("Dari Learner")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .padding(.top, 50)
                
                
                ZStack{
                    answerBubble
                    Text(viewModel.getActualAnswer().word.DariWord)
                        .foregroundColor(Color.white)
                        .font(.system(size: 30, weight: .heavy, design: .default))
                }
                
                
                Grid(viewModel.answers) { answer in
                    
                    quizView(answer: answer).onTapGesture {
                        if self.viewModel.chooseAnswer(answer: answer){
                        }
                        
                    }.transition(.opacity)
                }
            }
            .edgesIgnoringSafeArea([.top])
        }
    }
}

struct quizView: View {
    var answer: LearnModel.Answer
    
    var body: some View{
        GeometryReader { geometry in
            ZStack{
                answerBubble
                Text(self.answer.word.EnglishWord)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
            }
        }
    }
}



var answerBubble: some View {
    RoundedRectangle(cornerRadius: 20)
        .fill(Color.black)
        .shadow(color: Color.black, radius: 20, y: 5)
        .opacity(0.2)
        .padding()
    
}
