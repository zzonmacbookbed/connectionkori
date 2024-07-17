//
//  StudyArticleView.swift
//  connectionkori
//
//  Created by 제민국 on 7/17/24.
//

import SwiftUI

struct StudyArticleView: View {
    @ObservedObject private var ArticleVM = ArticleViewModel()
    
    let articles = Array(1...10).map { "Article \($0)" }
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(ArticleVM.article, id: \.self) { article in
                    NavigationLink(destination: StudyDetailView(title: article.title, content: article.content)) {
                        ArticleCell(data: article)
                            .foregroundColor(.black)
                    }
                }
            }
            .padding()
        }
    }
    
}
//extension StudyArticleView {
//    func articleCell(title:) {
//
//    }
//}
#Preview {
    StudyArticleView()
}
