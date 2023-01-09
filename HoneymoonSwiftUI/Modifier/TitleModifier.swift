//
//  TitleModifier.swift
//  HoneymoonSwiftUI
//
//  Created by Andre Dippenaar on 2023/01/05.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}

