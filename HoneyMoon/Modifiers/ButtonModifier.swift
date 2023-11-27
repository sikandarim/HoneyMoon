//
//  ButtonModifier.swift
//  HoneyMoon
//
//  Created by Mariam Sikandari on 2023-11-26.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    
    func body(content: Content) -> some View {
          content
        .font(.headline)
        .padding()
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Capsule().fill(Color.pink))
        .foregroundColor(Color.white)
    }
   
}
