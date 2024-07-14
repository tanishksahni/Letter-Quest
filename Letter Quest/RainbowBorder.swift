//
//  RainbowBorder.swift
//  Letter Quest
//
//  Created by Tanishk Sahni on 14/07/24.
//

import SwiftUI

struct RainbowBorder: ViewModifier {
    @State private var startColor = 0.0
    
    private let colors = [
        Color(red: 0.3, green: 0.75, blue: 0.93), // Light Blue
        Color(red: 0.25, green: 0.46, blue: 0.76), // Coral
        Color(red: 0.35, green: 0.8, blue: 0.35)  // Light Green
    ]
    
    func body(content: Content) -> some View {
        content
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(
                        LinearGradient(gradient: Gradient(colors: colors),
                                       startPoint: .leading,
                                       endPoint: .trailing),
                        lineWidth: 5
                    )
                    .cornerRadius(10)
            )
            .onAppear {
                withAnimation(Animation.linear(duration: 2).repeatForever(autoreverses: false)) {
                    startColor += 1
                }
            }
    }
}

extension View {
    func rainbowBorder() -> some View {
        self.modifier(RainbowBorder())
    }
}

