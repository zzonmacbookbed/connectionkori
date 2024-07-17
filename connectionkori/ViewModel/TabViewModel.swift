//
//  TabViewModel.swift
//  connectionkori
//
//  Created by 제민국 on 7/17/24.
//




import SwiftUI

class TabViewModel: ObservableObject {
    @Published var selected: TabName = .home
}
