//
//  ArticleViewModel.swift
//  connectionkori
//
//  Created by 제민국 on 7/17/24.
//

import SwiftUI

class ArticleViewModel : ObservableObject {
    @Published var title : String = ""
    @Published var content : String = ""
    @Published var article: [Article] = [
        Article(title: "한국의 식생활", content: "한국의 식생활에 대한 문서입니다.\n눌러서 읽어보세요"),
        Article(title: "한국의 주거문화", content: "한국의 주거문화에 대한 문서입니다.\n눌러서 읽어보세요"),
        Article(title: "한국의 전통의상", content: "한국의 전통의상에 대한 문서입니다.\n눌러서 읽어보세요"),
        Article(title: "한국의 음악", content: "한국의 음악에 대한 문서입니다.\n눌러서 읽어보세요"),
        Article(title: "한국의 언어", content: "한국의 언어에 대한 문서입니다.\n눌러서 읽어보세요"),
        Article(title: "한국의 예술", content: "한국의 예술에 대한 문서입니다.\n눌러서 읽어보세요"),
        Article(title: "한국의 스포츠", content: "한국의 스포츠에 대한 문서입니다.\n눌러서 읽어보세요"),
        Article(title: "한국의 교육", content: "한국의 교육에 대한 문서입니다.\n눌러서 읽어보세요"),
        Article(title: "한국의 역사", content: "한국의 역사에 대한 문서입니다.\n눌러서 읽어보세요"),
        Article(title: "한국의 기술", content: "한국의 기술에 대한 문서입니다.\n눌러서 읽어보세요")
    ]
}

