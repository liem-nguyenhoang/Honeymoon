//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by LiemNH2 on 03/04/2022.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}
