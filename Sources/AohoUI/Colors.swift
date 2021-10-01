//
//  SwiftUIView.swift
//  
//
//  Created by Taichi Arima on 2021/09/30.
//

import SwiftUI

extension Color {
    static let aoho_green: Color = Color(UIColor.aoho_green)
    
    // Primary to Quaternary labels.
    static let aoho_primary_label: Color = Color(UIColor.label)
    static let aoho_secondary_label: Color = Color(UIColor.secondaryLabel)
    static let aoho_tertiary_label: Color = Color(UIColor.tertiaryLabel)
    static let aoho_quaternary_label: Color = Color(UIColor.quaternaryLabel)
}

extension UIColor {
    static let aoho_green: UIColor = UIColor(hex: 0x8bcecb)
    
    // Primary to Quaternary labels.
    static let aoho_primary_label: UIColor = UIColor.label
    static let aoho_secondary_label: UIColor = UIColor.secondaryLabel
    static let aoho_tertiary_label: UIColor = UIColor.tertiaryLabel
    static let aoho_quaternary_label: UIColor = UIColor.quaternaryLabel
}

// Hex Colors
extension UIColor {
    convenience init(hex: Int, alpha: CGFloat = 1) {
        let components = (
            R: CGFloat((hex >> 16) & 0xff) / 255,
            G: CGFloat((hex >> 08) & 0xff) / 255,
            B: CGFloat((hex >> 00) & 0xff) / 255
        )
        self.init(red: components.R, green: components.G, blue: components.B, alpha: alpha)
    }
}

extension Color {
    init(hex: Int, alpha: Double = 1) {
        let components = (
            R: Double((hex >> 16) & 0xff) / 255,
            G: Double((hex >> 08) & 0xff) / 255,
            B: Double((hex >> 00) & 0xff) / 255
        )
        self.init(
            .sRGB,
            red: components.R,
            green: components.G,
            blue: components.B,
            opacity: alpha
        )
    }
}
