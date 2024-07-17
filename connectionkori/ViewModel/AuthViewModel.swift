//
//  AuthViewModel.swift
//  connectionkori
//
//  Created by 제민국 on 7/16/24.
//

import Foundation
import Alamofire

class AuthViewModel : ObservableObject {
    @Published var nickname : String = ""
    @Published var email : String = ""
    @Published var password : String = ""
    @Published var isLoggedIn: Bool = false
    
    var token : String? {
        get {
            try? KeychainManager.get() // get 프로퍼티로 키체인에 저장된 토큰을 불러요.
        }
    }
    
    init(email: String = "", password: String = "") {
        self.email = email
        self.password = password
    }
    
    
    
    func signup() {
        
        let url = "\(Bundle.main.baseUrl)/auth/signup"
        
        
        let header : HTTPHeaders = ["Content-Type": "application/json"]
        let dataRequest = AF.request(url,
                                     method: .post,
                                     parameters: ["nickname":nickname, "email": email, "password":password],
                                     encoding: JSONEncoding.default,
                                     headers: header)
        
            .validate()
        dataRequest.responseData { dataResponse in
            
            switch dataResponse.result {
            case .success(let data):
                print("sucess")
                self.objectWillChange.send()
                break
            
            case .failure(let error):
                print(error.localizedDescription)
                
                
            }
        }
        
        
    }
    
    func login(_ username : String, _ password_ : String) {
        
        let url = "\(Bundle.main.baseUrl)/auth/signin"
        
        let parameter: [String: Any] = ["email": email, "password": password]
        
        let header: HTTPHeaders = ["Content-Type": "application/json"]
        
        AF.request(url,
                   method: .post,
                   parameters: parameter as Dictionary,
                   encoding: JSONEncoding.default,
                   headers: header)
        .validate()
        .responseDecodable(of: TokenModel.self) { response in
            switch response.result {
            case .success(let data):
                do {
                    try KeychainManager.save(token: data.token)
                    self.isLoggedIn = true
                    
                    print("키체인 저장에 성공하였습니다.")
                    
                } catch {
                    print(error)
                }
            case .failure(let error):
                print(debugPrint(error))
            }
        }
    }
    
    
    
    func logout() {
        do {
            try KeychainManager.deleteToken()
            isLoggedIn = false
            
            if token != nil {
                logout()
            }
        } catch {
            print("로그아웃 안됌")
            return
        }
    }
    
}
