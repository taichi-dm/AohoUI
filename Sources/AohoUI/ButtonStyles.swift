//
//  SwiftUIView.swift
//  
//
//  Created by Taichi Arima on 2021/09/30.
//

import SwiftUI

// ButtonStyles

public struct AHPrimaryButtonStyle: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.aoho_primary_label)
            .frame(maxWidth: 500)
            .padding()
            .background(Capsule()
                            .fill(Color.aoho_primary_label)
                            .colorInvert()
                            .shadow(color: AohoUI.Colors.aoho_quaternary_label.opacity(0.3),
                                    radius: 20))
            .padding(.vertical)
    }
}


public struct AHSecondaryButtonStyle: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.aoho_secondary_label)
            .frame(maxWidth: 500)
            .padding()
            .background(Capsule()
                            .fill(Color.aoho_primary_label)
                            .colorInvert()
                            .shadow(color: AohoUI.Colors.aoho_quaternary_label.opacity(0.5),
                                    radius: 20))
            .padding(.vertical)
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
            }
            .preferredColorScheme(scheme)
        }
        .previewLayout(.sizeThatFits)
    }
}
