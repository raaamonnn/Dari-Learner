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
        ZStack(alignment: .top){
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea([.top])
            

            
            VStack{
                Text("Dari Learner")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)

                RoundedRectangle(cornerRadius: 20)
                .fill(Color.black)
                    .padding()
                Grid(viewModel.answers) { answer in
                    
                    quizView(answer: answer).onTapGesture {
                        self.viewModel.chooseAnswer(answer: answer)
                    }
                    .padding()
                }
            }

            
        }
    }
}
struct quizView: View {
    var answer: LearnModel.Answer
    
    var body: some View{
        GeometryReader { geometry in
            

                if self.answer.isAnswer{
                    RoundedRectangle(cornerRadius: 20)
                    .fill(Color.black)

                    Text(self.answer.word.DariWord)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                }
                 
                
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.black)
                    
                    Text(self.answer.word.EnglishWord)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                }
           

        }
    }
}
