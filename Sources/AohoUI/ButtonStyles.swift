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
            .foregroundColor(.black)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Capsule()
                            .fill(Color.white)
                            .shadow(color: AohoUI.Colors.aoho_quaternary_label,
                                    radius: 20))
            .padding(.vertical)
    }
}

public struct AHSecondaryButtonStyle: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
    }
}

struct AHButtonStyles_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self) { scheme in
            Group {
                Button("AHPrimaryButtonStyle") {}
                .buttonStyle(AHPrimaryButtonStyle())
                Button("AHSecondaryButtonStyle") {}
                .buttonStyle(AHSecondaryButtonStyle())
            }
            .preferredColorScheme(scheme)
        }
    }
}
