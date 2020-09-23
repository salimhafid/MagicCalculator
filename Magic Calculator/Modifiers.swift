//
//  Modifiers.swift
//  Magic Calculator
//
//  Created by Salim Hafid on 9/18/20.
//

import Foundation
import SwiftUI

struct CustomTextBorder: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .font(.largeTitle)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 2)
            )
            .foregroundColor(.blue)
    }
}
