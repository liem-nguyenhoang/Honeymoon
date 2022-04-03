//
//  HeaderComponent.swift
//  Honeymoon
//
//  Created by LiemNH2 on 03/04/2022.
//

import SwiftUI

struct HeaderComponent: View {
    // MARK: - PROPERTY
    
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Capsule()
                .frame(width: 120, height: 6)
                .foregroundColor(Color.secondary)
                .opacity(0.2)
            
            Image("logo-honeymoon")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
        }
    }
}

// MARK: - PREVIEW

struct HeaderComponent_Previews: PreviewProvider {
    static var previews: some View {
        HeaderComponent()
            .previewLayout(.fixed(width: 375, height: 128))
    }
}
