//
//  SwiftUIView.swift
//  
//
//  Created by Taichi Arima on 2021/10/19.
//

import SwiftUI

public struct Haptics {
    
    static func onButtonPushedIn() {
        let generator = UIImpactFeedbackGenerator(style: .rigid)
        generator.impactOccurred()
    }
    
    static func onButtonReleased() {
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
    }
}
