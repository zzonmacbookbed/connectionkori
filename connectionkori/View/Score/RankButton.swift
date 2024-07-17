//
//  RankCard.swift
//  connectionkori
//
//  Created by 제민국 on 7/17/24.
//

import SwiftUI

struct RankButton: View {
    var body: some View {
        ZStack(alignment:.leading) {
            RoundedRectangle(cornerRadius: 10)
                .frame(width:350,height: 100)
                .foregroundColor(Color(uiColor: .systemGray5))
            Text("내 랭킹 확인")
                .padding(.leading,20)
                .bold()
                .font(.system(size: 20))
            
        }
    }
}

#Preview {
    RankButton()
}
