//
//  LoginView.swift
//  connectionkori
//
//  Created by 제민국 on 7/16/24.
//

import SwiftUI
import UIKit


struct LoginView : View {
    @EnvironmentObject var loginVM: AuthViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationView{
            VStack{
                Image("BannerImg")//4:1
                    .resizable()
                    .frame(width: 230,height: 57.5)
                
                    .padding(.top,220)
                Text("연결코리, 문화를 잇다")
                    .font(.system(size: 20))
                    .padding(.top, 20)
                    .padding(.bottom,40)
                
                
                VStack(alignment: .leading) {
                    
                    Text("이메일")
                        .padding(.leading, 10)
                        .font(.system(size: 15))

                    
                    TextField("이메일을 입력하세요.", text: $loginVM.email)
                        .padding(.horizontal, 20)
                        .frame(width: 330, height: 40)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(uiColor: .systemGray6))
                        )
                        .textInputAutocapitalization(.never)
                        .padding(.bottom,10)
                    Text("비밀번호")
                        .padding(.leading, 10)
                    SecureField("비밀번호를 입력하세요.", text: $loginVM.password)
                        .padding(.horizontal, 20)
                        .frame(width: 330, height: 40)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(uiColor: .systemGray6))
                        )
                        .textInputAutocapitalization(.never)
                        
                    
                    HStack{
                        Button {
                            
                        } label: {
                            Text("비밀번호를 잊으셨나요?")
                                .foregroundStyle(Color(uiColor: .systemGray2))
                        }
                    }
                    .padding(.top,25)
                    
                    Button {
                        loginVM.login(loginVM.email,loginVM.password)
                        dismiss()
                        
                    } label: {
                        Text("로그인")
                            .font(.title)
                            .bold()
                            .frame(height: 60)
                            .frame(maxWidth: 330)
                            .background(Color("MainColor"))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding(.top, 20)
                }
                
                NavigationLink(destination: SignUpView()) {
                    Text("회원이 아니신가요?")
                        .foregroundStyle(Color(uiColor: .systemGray))
                        .padding(.top,20)
                        .bold()
                }
                
                .padding(.top, 5)
                .padding(.bottom, 130)
            }
            .padding(.bottom, 200)
        }
        .navigationBarBackButtonHidden(true)
    }
}

