//
//  CustomModifier.swift
//  Magic Calculator
//
//  Created by Salim Hafid on 9/19/20.
//

import Foundation
import SwiftUI

struct NumberButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .border(Color.blue, width: 1)
            .font(.title)
    }
}

struct OperatorButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .border(Color.black, width: 1)
            .font(.title)
            .padding(.all, 0)
            .background(Color.blue)
            .foregroundColor(Color.white)
    }
}
