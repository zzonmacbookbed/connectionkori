//
//  ContentView.swift
//  connectionkori
//
//  Created by 제민국 on 7/16/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var loginVM = AuthViewModel()
    var body: some View {
        if let token = loginVM.token {
            TabBarView()
                .environmentObject(loginVM)
        } else {
            LoginView()
                .environmentObject(loginVM)
        }
    }
}

#Preview {
    ContentView()
        
}
