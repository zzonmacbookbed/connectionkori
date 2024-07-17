//
//  Bundle+.swift
//  connectionkori
//
//  Created by 제민국 on 7/16/24.
//

import Foundation

extension Bundle {
    var baseUrl: String {
        let config = Bundle.main.url(forResource: "Configuration", withExtension: "plist")

        do {
            let data = try Data(contentsOf: config!)
            let dict = try PropertyListSerialization.propertyList(from: data, format: nil) as! [String: Any]
            
            return dict["ENDPOINT"] as! String
        } catch {
            // fuck u
        }
        return ""
    }
}
