//
//  QuizProcess.swift
//  connectionkori
//
//  Created by 제민국 on 7/18/24.
//

import SwiftUI

struct QuizProcess: View {
    let quizArticle: QuizArticle
    @State private var currentQuizItemIndex = 0
    @State private var userAnswers: [Bool] = []
    @State private var showResult = false
    @Environment(\.presentationMode) var presentationMode

    private var currentQuizItem: QuizArticlePicture {
        quizArticle.quizItems[currentQuizItemIndex]
    }

    private var isLastQuestion: Bool {
        currentQuizItemIndex == quizArticle.quizItems.count - 1
    }

    var body: some View {
        VStack(spacing: 20) {
            Text(quizArticle.title)
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Question \(currentQuizItemIndex + 1) of \(quizArticle.quizItems.count)")
                .font(.subheadline)
                .foregroundColor(.gray)

            Text(currentQuizItem.question)
                .font(.headline)

            currentQuizItem.image
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .background(Color.green)
                .clipShape(RoundedRectangle(cornerRadius: 10))

            HStack(spacing: 20) {
                Button(action: {
                    answerQuestion(true)
                }) {
                    Image("Correct")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                }

                Button(action: {
                    answerQuestion(false)
                }) {
                    Image("Wrong")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                }
            }

            if isLastQuestion && !userAnswers.isEmpty {
                Button("결과 보기") {
                    showResult = true
                }
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
            }
        }
        .padding()
        .sheet(isPresented: $showResult) {
            QuizResultView(quizArticle: quizArticle, userAnswers: userAnswers)
        }
    }

    private func answerQuestion(_ answer: Bool) {
        userAnswers.append(answer == currentQuizItem.isCorrect)
        
        if !isLastQuestion {
            currentQuizItemIndex += 1
        }
        
        if isLastQuestion && userAnswers.count == quizArticle.quizItems.count {
            showResult = true
        }
    }
}
