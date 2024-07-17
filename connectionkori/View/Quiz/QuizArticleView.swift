//
//  QuizArticleView.swift
//  connectionkori
//
//  Created by 제민국 on 7/17/24.
//

import SwiftUI

struct QuizArticleView: View {
    @ObservedObject private var QArticleVM = QuizArticleViewModel()
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(QArticleVM.qarticle) { Qarticle in
                    NavigationLink(destination: QuizDetailView(quizArticle: Qarticle)) {
                        QuizArticleCell(qdata: Qarticle)
                            .foregroundColor(.black)
                    }
                }
            }
            .padding()
        }
    }
}
