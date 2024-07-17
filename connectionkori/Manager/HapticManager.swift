//
//  HapticManager.swift
//  UnFO
//
//  Created by 제민국 on 6/13/24.
//

import CoreHaptics
import UIKit

class HapticManager {
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(type)
    }
    
    static func impact(style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.impactOccurred()
    }
    
    
}

