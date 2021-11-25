//
//  SwiftUIView.swift
//  
//
//  Created by Taichi Arima on 2021/09/30.
//

import SwiftUI

// ButtonStyles

public struct AHPrimaryButtonStyle: ButtonStyle {
    public init() {}
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.aoho_systemBackground)
            .frame(maxWidth: 500)
            .padding()
            .background(Capsule()
                            .fill(Color.aoho_primary_label)
                            .shadow(color: AohoUI.Colors.aoho_quaternary_label.opacity(0.3),
                                    radius: 20))
            .padding(.vertical)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .animation(.easeOut, value: configuration.isPressed)
            .onChange(of: configuration.isPressed) { newValue in
                if newValue {
                    AHHaptics.onButtonPushedIn()
                } else {
                    AHHaptics.onButtonReleased()
                }
            }
    }
}


public struct AHSecondaryButtonStyle: ButtonStyle {
    public init() {}
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.aoho_primary_label)
            .frame(maxWidth: 500)
            .padding()
            .background(Capsule()
                            .fill(Color.aoho_primary_label)
                            .colorInvert()
                            .shadow(color: AohoUI.Colors.aoho_quaternary_label.opacity(0.5),
                                    radius: 20))
            .padding(.vertical)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .animation(.easeOut, value: configuration.isPressed)
    }
}

public struct AHTintButtonStyle: ButtonStyle {
    public init() {}
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .frame(maxWidth: 500)
            .padding()
            .background(Capsule()
                            .fill(Color.aoho_green))
            .padding(.vertical)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .animation(.easeOut, value: configuration.isPressed)
    }
}

struct AHButtonStyles_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self) { scheme in
            VStack(spacing: 30) {
                Button("AHPrimaryButtonStyle") {}
                .buttonStyle(AHPrimaryButtonStyle())
                
                Button("AHSecondaryButtonStyle") {}
                .buttonStyle(AHSecondaryButtonStyle())
                
                Button("AHTintButtonStyle") {}
                .buttonStyle(AHTintButtonStyle())
            }
            .preferredColorScheme(scheme)
        }
        .previewLayout(.sizeThatFits)
    }
}
