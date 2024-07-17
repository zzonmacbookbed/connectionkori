//
//  Article.swift
//  connectionkori
//
//  Created by 제민국 on 7/17/24.
//

import Foundation

struct Article: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let content: String
    
}
