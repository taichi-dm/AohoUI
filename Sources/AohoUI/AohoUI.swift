
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
    static let aoho_green: Color = Color("aoho_green")
}


public struct AHPrimaryButtonStyle: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding()
            .background(Capsule().fill(Color.white))
            .padding(.vertical)
    }
}

public struct AHSecondaryButtonStyle: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
    }
}
