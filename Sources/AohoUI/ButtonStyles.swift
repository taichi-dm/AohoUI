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

struct AohoUI_Catalog: PreviewProvider {
    static var previews: some View {
        AohoUI.aoho_green.frame(width: 230, height: 270)
    }
}
