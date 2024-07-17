//
//  ArticleCell.swift
//  connectionkori
//
//  Created by 제민국 on 7/17/24.
//

import SwiftUI

struct ArticleCell: View {
    
    @ObservedObject var ArticleVM = ArticleViewModel()
    @State var data: Article
    

    var body: some View {
        ZStack(alignment: .topLeading) {
            RoundedRectangle(cornerRadius: 5)
                .frame(width:400,height:150)
                .foregroundColor(Color(uiColor: .systemGray6))
//            data.image
            Text(data.title)
                .padding(.top,20)
                .padding(.leading,30)
                .font(.system(size: 30))
                .bold()
            Text(data.content)
                .padding(.top,75)
                .padding(.leading,30)
                .font(.system(size: 20))
                
                
        }
    }
}


