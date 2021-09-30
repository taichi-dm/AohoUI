import UIKit
import SwiftUI

public struct AohoUI {
    // 20
    static let cornerRadius: CGFloat = 20.0
    
    @available(iOS 13.0, *)
    static let shadowColor: Color = Color.secondary.opacity(0.05)
}

public extension UIColor {
    @available(iOS 11.0, *)
    static let aoho_green: UIColor = UIColor(named: "aoho_green")!
}

@available(iOS 13.0, *)
public extension Color {
    static let aoho_green: Color = Color("aoho_green")
}
