//
//  MyPageView.swift
//  connectionkori
//
//  Created by 제민국 on 7/17/24.
//

import SwiftUI

struct MyPageView: View {
    @State var name: String = ""
    @EnvironmentObject var loginVM: AuthViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(.trailing, 15)
                    .foregroundColor(.gray)
                Text((loginVM.token != nil) ? "회원입니다" : "비회원입니다")
                    .font(
                        Font.custom("Inter", size: 25)
                            .weight(.medium)
                    )
            }
            .padding(.trailing, 135)
            .padding(.bottom, 35)
            
            if loginVM.token != nil {
                Button {
                    do {
                        try KeychainManager.deleteToken()
                        print(loginVM.token ?? "No Token")
                        loginVM.objectWillChange.send()
                        exitApp()
                    } catch {
                        print("실패함 ")
                    }
                    
                } label: {
                    HStack {
                        Image(systemName: "rectangle.portrait.and.arrow.right")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.black)
                        
                        Text("로그아웃")
                            .font(Font.custom("Inter", size: 20)
                                .weight(.medium))
                    }
                    .padding(.trailing, 250)
                    .foregroundColor(.red)
                }
            }
        }
        .padding(.top, 20)
        .padding(.bottom, 500)
    }
    
    private func exitApp() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            exit(0)
        }
    }
}

#Preview {
    NavigationView {
        MyPageView()
    }
}
