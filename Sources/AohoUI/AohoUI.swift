
import UIKit
import SwiftUI

public struct AohoUI {
    // 20
    public static let cornerRadius: CGFloat = 20.0
    public static let spacing: CGFloat = 15
    
    
    public static let shadowColor: Color = Color.secondary.opacity(0.05)
    public static let aoho_green: Color = Color.aoho_green
}

private extension Color {
    static let aoho_green: Color = Color(hex: 0x8bcecb)
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

