//
//  SwiftUIView.swift
//  
//
//  Created by Taichi Arima on 2021/09/30.
//

import SwiftUI

fileprivate var shouldCelebrate: Bool {
    let today = Calendar.current.dateComponents([.day, .month], from: Date())
    let shouldCelebrate = today.day == 20 && today.month == 7
    return shouldCelebrate
}

public struct AohoSymbol: View {
    @State private var iconRotationAngle: Angle = .zero
    @State private var short: Angle = Angle.degrees(30 * (shouldCelebrate ? 7 : 4)) // hour * 30
    @State private var long: Angle = Angle.degrees(6 * (shouldCelebrate ? 20 : 0))  // minute * 5
    
    @State private var clockTimer: Timer!
    @State private var loadingTimer: Timer!
    
    var state: SymbolState
    
    enum SymbolState {
        case stop
        case loading
        case tappable
        case clock
    }
    
    init(state: SymbolState? = nil) {
        if let state = state {
            self.state = state
        } else {
            self.state = shouldCelebrate ? .tappable : .stop
        }
    }
    
    public var body: some View {
        GeometryReader { proxy in
            
            let size = proxy.size
            let min = min(size.width, size.height)
            let bottomLeftCornerRadius = min / 8
            
            ZStack {
                ZStack(alignment: .bottomLeading) {
                    RoundedRectangle(cornerRadius: bottomLeftCornerRadius)
                        .fill(AohoUI.Colors.aoho_green)
                        .frame(width: min / 2 + bottomLeftCornerRadius, height: min / 2 + bottomLeftCornerRadius)
                    
                    Circle()
                        .fill(AohoUI.Colors.aoho_green)
                        .frame(width: min, height: min)
                    
                }
                .rotationEffect(iconRotationAngle, anchor: .center)
                
                Group {
                    
                    /// white circle
                    Circle()
                        .colorInvert()
                        .frame(width: min / 1.2, height: min / 1.2)
                    
                    
                    /// innner circle main_green
                    Circle()
                        .fill(AohoUI.Colors.aoho_green)
                        .frame(width: min / 1.4, height: min / 1.4)
                    
                    
                    /// Shot and long...
                    ZStack {
                        Capsule()
                            .colorInvert()
                            .frame(width: min / 15, height: min / 3.2)
                            .offset(y: -min / 6)
                        
                        Rectangle()
                            .colorInvert()
                            .frame(width: min / 15, height: min / 5)
                            .offset(y: -min / 10)
                    }
                    .rotationEffect(long, anchor: .center)
                    
                    ZStack {
                        Capsule()
                            .colorInvert()
                            .frame(width: min / 15, height: min / 4)
                            .offset(y: -min / 8)
                        
                        Rectangle()
                            .colorInvert()
                            .frame(width: min / 15, height: min / 5)
                            .offset(y: -min / 10)
                    }
                    .rotationEffect(short, anchor: .center)
                    
                    
                    Circle()
                        .colorInvert()
                        .frame(width: min / 15, height: min / 15)
                    
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .onAppear(perform: onAppear)
            .onDisappear(perform: onDisappear)
            .onTapGesture {
                guard state == .tappable else { return }
                animate()
            }
        }
    }
    
    private func onAppear() {
        switch state {
        case .loading:
            loadingTimer = Timer.scheduledTimer(withTimeInterval: 2.7, repeats: true) { _ in
                animate()
            }
        case .clock:
            launchClock()
        default: break
        }
    }
    
    private func onDisappear() {
        if state == .clock {
            clockTimer?.invalidate()
            clockTimer = nil
        }
        
        if state == .loading {
            loadingTimer?.invalidate()
            loadingTimer = nil
        }
    }
    
    private func animate() {
        withAnimation(Animation.spring(response: 2.9, dampingFraction: 0.6, blendDuration: 0.1)) {
            iconRotationAngle.degrees -= 360
        }
        withAnimation(Animation.spring(response: 3.5, dampingFraction: 1, blendDuration: 0.1)) {
            long.degrees += 360
        }
        
        withAnimation(Animation.spring(response: 1.5, dampingFraction: 0.6, blendDuration: 0.1)) {
            short.degrees -= 360
        }
    }
    
    private func launchClock() {
        clockTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            let components = Calendar.current.dateComponents([.hour, .minute], from: Date())
            guard let hour =  components.hour,
                  let minute = components.minute
            else { fatalError() }
            
            withAnimation(.spring()) {
                short.degrees = Double(30 * hour) // hour * 30
                long.degrees = Double(6 * minute)  // minute * 5
            }
        }
    }
    
}

struct Aoho_Logo_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AohoSymbol(state: .clock)
                .previewDisplayName("Clock")
            AohoSymbol(state: .loading)
                .previewDisplayName("Loading")
            AohoSymbol(state: .tappable)
                .previewDisplayName("Tappable")
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
