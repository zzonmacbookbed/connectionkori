//
//  HomeView.swift
//  connectionkori
//
//  Created by 제민국 on 7/16/24.
//

import SwiftUI

struct HomeView : View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Button {
                    
                } label: {
                    RankButton()
                }
                .padding(.leading,30)
                
                HomeCardView()
                    .padding(10)
                    .padding(.leading,20)
                    .padding(.trailing,20)
                
                Text("나의 최대기록")
                    .padding(.leading,30)
                ScoreCard()
                
                HStack {
                    VStack {
                        Text("공부하러 가기")
                            
                        NavigationLink(destination: StudyArticleView()) {
                            RoundedRectangle(cornerRadius: 15)
                                        .fill(Color.clear)
                                        .frame(maxWidth: 150, maxHeight: 150)
                                        .background(
                                            Image("Study")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 150, height: 150)
                                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                        )
                                        .foregroundColor(Color(uiColor: .systemGray5))
                        }
                    }.padding(.leading,30)
                    
                    VStack() {
                        Text("퀴즈 풀러가기")
                            
                        NavigationLink(destination: QuizArticleView()) {
                            RoundedRectangle(cornerRadius: 15)
                                        .fill(Color.clear)
                                        .frame(maxWidth: 150, maxHeight: 150)
                                        .background(
                                            Image("Quiz")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 150, height: 150)
                                                .clipShape(RoundedRectangle(cornerRadius: 15))
                                        )
                                        .foregroundColor(Color(uiColor: .systemGray5))
                            
                        }
                    }.padding(.leading,40)
                    
                }.padding(.top,10)
                
            }
        }
        
    }
}

#Preview {
    HomeView()
}
