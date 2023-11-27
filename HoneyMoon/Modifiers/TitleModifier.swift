//
//  TitleModifier.swift
//  HoneyMoon
//
//  Created by Mariam Sikandari on 2023-11-26.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}
