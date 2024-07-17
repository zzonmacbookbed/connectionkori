//
//  QuizArticle.swift
//  connectionkori
//
//  Created by 제민국 on 7/18/24.
//

import SwiftUI

struct QuizArticlePicture: Identifiable {
    let id = UUID()
    let image: Image
    let question: String
    let isCorrect: Bool
}

struct QuizArticle: Identifiable {

    
    let id = UUID()
    let title: String
    let content: String
    let quizItems: [QuizArticlePicture]
    
    init(title: String, content: String, quizItems: [QuizArticlePicture]) {
        self.title = title
        self.content = content
        self.quizItems = quizItems
        
        // 최소한 1개의 퀴즈 아이템이 있는지 확인
        assert(!quizItems.isEmpty, "QuizArticle must have at least one quiz item")
    }
}
