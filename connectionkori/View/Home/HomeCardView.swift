//
//  MainCardView.swift
//  connectionkori
//
//  Created by 제민국 on 7/17/24.
//

import SwiftUI

struct HomeCardView: View {
    
    let text: String = "오늘 할 일 입니다."
    
    var body: some View {
        ZStack {
            Image("TestImg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 350, height: (UIScreen.main.bounds.width - 40) * 0.5)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            
            VStack(alignment: .leading) {
            }
        }
        .frame(width: 350, height: (UIScreen.main.bounds.width - 40) * 0.5, alignment: .center)
    }
}

#Preview {
    HomeCardView()
}
