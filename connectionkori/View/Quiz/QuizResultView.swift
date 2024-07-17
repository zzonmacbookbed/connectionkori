//
//  QuizResultView.swift
//  connectionkori
//
//  Created by 제민국 on 7/18/24.
//

import SwiftUI

struct QuizResultView: View {
    let quizArticle: QuizArticle
    let userAnswers: [Bool]
    @Environment(\.presentationMode) var presentationMode

    var correctAnswers: Int {
        userAnswers.filter { $0 }.count
    }

    var body: some View {
        VStack(spacing: 20) {
            Text("퀴즈 결과")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("\(quizArticle.quizItems.count)개의 문제 중 \(correctAnswers)개를 맞추셨습니다!")
                .font(.title2)

            Text("정답률: \(Int((Double(correctAnswers) / Double(quizArticle.quizItems.count)) * 100))%")
                .font(.title3)

            ForEach(quizArticle.quizItems.indices, id: \.self) { index in
                HStack {
                    Text("문제 \(index + 1):")
                    Image(systemName: userAnswers[index] ? "checkmark.circle.fill" : "xmark.circle.fill")
                        .foregroundColor(userAnswers[index] ? .green : .red)
                }
            }

            Button("퀴즈 종료") {
                presentationMode.wrappedValue.dismiss()
            }
            .font(.headline)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
        }
        .padding()
    }
}

//#Preview {
//    QuizResultView()
//}
