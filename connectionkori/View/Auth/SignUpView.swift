//
//  SignUpView.swift
//  connectionkori
//
//  Created by 제민국 on 7/16/24.
//

import SwiftUI

struct SignUpView : View {
    @ObservedObject private var signupVM = AuthViewModel()
    
    @State var rePassword: String = ""
    
    @State private var showingAlert = false
    
    var body: some View {
        NavigationView{
            VStack{
                Image("BannerImg")//4:1
                    .resizable()
                    .frame(width: 230,height: 57.5)
                
                    .padding(.top,330)
                Text("연결코리, 문화를 잇다")
                    .font(.system(size: 20))
                    .padding(.top, 20)
                    .padding(.bottom,20)
                
                
                VStack(alignment: .leading) {
                    Text("닉네임")
                        .padding(.leading, 10)
                    
                    
                    TextField("사용하실 닉네임을 입력해주세요.", text: $signupVM.nickname)
                        .padding(.horizontal, 20)
                        .frame(width: 330, height: 40)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(uiColor: .systemGray6))
                        )
                    Text("이메일")
                        .padding(.leading, 10)
                    
                    TextField("이메일을 입력하세요.", text: $signupVM.email)
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
                    SecureField("비밀번호를 입력하세요.", text: $signupVM.password)
                        .padding(.horizontal, 20)
                        .frame(width: 330, height: 40)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(uiColor: .systemGray6))
                        )
                        .textInputAutocapitalization(.never)
                    Text("비밀번호 확인")
                        .padding(.leading, 10)
                    SecureField("비밀번호를 한번 더 입력하세요.", text: $rePassword)
                        .padding(.horizontal, 20)
                        .frame(width: 330, height: 40)
                        .padding(.vertical, 8)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(uiColor: .systemGray6))
                        )
                        .textInputAutocapitalization(.never)
                    
                    
                    Button {
                        if signupVM.password == rePassword {
                            signupVM.signup()
                        } else {
                            showingAlert = true
                        }
                    } label: {
                        Text("회원가입")
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
                
                NavigationLink(destination: LoginView()) {
                    Text("회원 이신가요?")
                        .foregroundStyle(Color(uiColor: .systemGray))
                        .padding(.top,20)
                        .bold()
                }
                
                .padding(.top, 5)
                .padding(.bottom, 130)
            }
            .padding(.bottom, 200)
        }
        .textInputAutocapitalization(.never)
        .navigationBarBackButtonHidden(true)
        .alert(isPresented: $showingAlert) {
            Alert(
                title: Text("비밀번호 불일치"),
                message: Text("비밀번호가 일치하지 않습니다."),
                dismissButton: .default(Text("확인"))
            )
        }
        
    }
}

#Preview {
    SignUpView()
    //        .environment(SignUpNetwork())
}
