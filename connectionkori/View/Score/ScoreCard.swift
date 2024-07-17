//
//  ScoreCard.swift
//  connectionkori
//
//  Created by 제민국 on 7/17/24.
//

import SwiftUI

struct ScoreCard: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .clipShape(.rect(topLeadingRadius: 10, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 10))
                .frame(maxWidth: 350, maxHeight: 100)
                .foregroundColor(.cyan)
            
            Text("70/100점")
                .foregroundColor(.white) // 텍스트 색상
                .padding(.leading, 20) // 텍스트의 왼쪽 여백
        }
        .padding(.leading, 30)
    }
}

#Preview {
    ScoreCard()
}
