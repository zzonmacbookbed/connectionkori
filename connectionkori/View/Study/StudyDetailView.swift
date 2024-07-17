//
//  StudyDetailView.swift
//  connectionkori
//
//  Created by 제민국 on 7/18/24.
//

import SwiftUI

struct StudyDetailView: View {
    @State var title : String
    @State var content : String
    @State var description : String = ""
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.system(size: 48))
                    .bold()
                    .padding(.vertical,30)
                Text(content)
                    .padding(.vertical,30)
            }
        }
    }
}

//#Preview {
//    StudyDetailView()
//}
