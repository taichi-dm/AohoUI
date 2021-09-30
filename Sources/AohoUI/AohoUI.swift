import UIKit
import SwiftUI

@available(iOS 13.0, *)
public struct AohoUI {
    // 20
    static let cornerRadius: CGFloat = 20.0
    static let spacing: CGFloat = 15
    
    
    static let shadowColor: Color = Color.secondary.opacity(0.05)
    static let aoho_green: Color = Color.aoho_green
}

@available(iOS 13.0, *)
private extension Color {
    static let aoho_green: Color = Color("aoho_green")
}


@available(iOS 13.0.0, *)
public struct AHPrimaryButtonStyle: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding()
            .background(Capsule().fill(Color.white))
            .padding(.vertical)
    }
}

@available(iOS 13.0.0, *)
public struct AHSecondaryButtonStyle: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
    }
}
