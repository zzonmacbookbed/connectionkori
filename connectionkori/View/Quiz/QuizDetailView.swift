//
//  QuizDetailView.swift
//  connectionkori
//
//  Created by 제민국 on 7/18/24.
//

import SwiftUI

struct QuizDetailView: View {
    let quizArticle: QuizArticle
    @State private var isPlaying = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text(quizArticle.title)  // 제목 표시
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text(quizArticle.content)  // 내용 표시
                .font(.subheadline)
                .foregroundColor(.gray)
            
            HStack(spacing: 20) {
                Image("Correct")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                
                Image("Wrong")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
            }
            
            Text("짝그림")
                .font(.headline)
            
            Image("chalkboard") // 실제 이미지 이름으로 변경해주세요
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .background(Color.green)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Text("서민덕님 준비 되셨다면 시작을 눌러주세요")
                .font(.subheadline)
                .multilineTextAlignment(.center)
            
            Button(action: {
                isPlaying = true
            }) {
                Text("시작하기")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            Button(action: {
                // 돌아가기 동작
            }) {
                Text("돌아가기")
                    .font(.headline)
                    .foregroundColor(.blue)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
            }
        }
        .padding()
        .sheet(isPresented: $isPlaying) {
            QuizProcess(quizArticle: quizArticle)
        }
    }
}

//#Preview {
//    QuizDetailView()
//}
