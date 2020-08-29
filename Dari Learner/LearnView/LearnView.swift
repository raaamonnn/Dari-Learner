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
    
    @State private var tappedAnswers = [LearnModel.Answer]() //used to color in the cells after press
    @State private var allAnswers = [LearnModel.Answer]() //used for opacity
    @State private var dim = false
    @State private var disabled = false
    
    init(){
        self.allAnswers = viewModel.answers //why is this empty
    }
    func colorFor(answer: LearnModel.Answer, correctAnswer: LearnModel.Answer) -> Color {

        if self.tappedAnswers.contains(answer) && answer == correctAnswer {
           // Check for correct answer right away.
           return Color.green
       } else if self.tappedAnswers.contains(answer) && answer != correctAnswer {
           // The user tapped the answer, but it wasn't correct.
           return Color.red
       } else {
           return Color.black
       }
    }
    
    var body: some View {
        ZStack{
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea([.top, .bottom])
            
            VStack{
                HStack{
                    Text("Dari Learner")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .padding(.top, 50)
                    .padding(.leading, 90)
                
                
                Button(action: {
                    print("Button Tapped")
                    self.viewModel.createQuiz()
                }) {
                            Text("Next")
                                .foregroundColor(Color.white)
                                .font(.callout)
                                .padding(10)
                                .padding([.trailing,.leading], 10)
                                .background(Color.green.opacity(0.5))
                                .cornerRadius(25)
                                .padding(.top, 50)
                                .padding(.trailing, 10)
                                .opacity(self.dim ? 1 : 0)
                            
                }
                .transition(.scale)
                    .animation(.easeInOut(duration: 1.5))// !disabled because this is also used for the answerbubbles
                }
                
                ZStack{
                    AnswerBubble(fillColor: Color.black, isChosen: false)
                    Text(viewModel.getActualAnswer().word.DariWord)
                        .foregroundColor(Color.white)
                        .font(.system(size: 30, weight: .heavy, design: .default))
                }
                
                
                Grid(viewModel.answers) { answer in
                    
                    QuizView(answer: answer,
                        fillColor: self.colorFor(answer: answer, correctAnswer: self.viewModel.getActualAnswer())).onTapGesture {
                
                        self.tappedAnswers.append(answer)
                            
                        if self.viewModel.chooseAnswer(answer: answer){
                            self.dim.toggle()
                            self.disabled.toggle()
                        }
                    }
                    .animation(.easeInOut(duration: 1.0))
                    .disabled(self.disabled)
                }
            }
            .edgesIgnoringSafeArea([.top])
        }.onDisappear{
            self.viewModel.createQuiz()
        }
    }
}

struct QuizView: View {
    let answer: LearnModel.Answer
    let fillColor: Color
    
    var body: some View{
        GeometryReader { geometry in
            ZStack{
    
                AnswerBubble(fillColor: self.fillColor, isChosen: (self.answer.isChosen ? true : false))
                
                Text(self.answer.word.EnglishWord)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct AnswerBubble: View {
    let fillColor: Color
    let isChosen: Bool
    
    var body: some View{
        RoundedRectangle(cornerRadius: 20)
            .fill(fillColor)
            .shadow(color: Color.black, radius: 20, y: 5)
            .opacity(0.5)
            .padding()
            .scaleEffect(isChosen ? 1.1 : 1)
    }// add 1.0 opacity
}
