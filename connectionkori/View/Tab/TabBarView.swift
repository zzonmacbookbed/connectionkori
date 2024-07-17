//
//  TabView.swift
//  connectionkori
//
//  Created by 제민국 on 7/17/24.
//

import SwiftUI


struct TabBarView : View {
    @StateObject var tabVM = TabViewModel()
    @StateObject var AuthVM = AuthViewModel()
    
    var body: some View {
        TabView(selection: $tabVM.selected) {
            HomeView()
                .environmentObject(tabVM)
                .tag(TabName.home)
                .tabItem {
                    Image(systemName: "house")
                    Text("홈")
                }
            MainView()
                .tag(TabName.main)
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("메인 화면")
                }
            MyPageView()
                .tag(TabName.user)
                .tabItem { 
                    Image(systemName: "person")
                    Text("마이 메뉴")
                }
        }
        
    }
}
