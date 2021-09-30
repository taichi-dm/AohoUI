
import UIKit
import SwiftUI

// Single source of truth.
public struct AohoUI {
    public struct Colors {
        public static let shadowColor: Color = Color.secondary.opacity(0.05)
        public static let aoho_green: Color = Color.aoho_green
        public static let aoho_primary_label: Color = Color.aoho_primary_label
        public static let aoho_secondary_label: Color = Color.aoho_secondary_label
        public static let aoho_tertiary_label: Color = Color.aoho_tertiary_label
        public static let aoho_quaternary_label: Color = Color.aoho_quaternary_label
    }
    
    public struct Token {
        public static let cornerRadius: CGFloat = 20.0
        public static let spacing: CGFloat = 15
    }
}


