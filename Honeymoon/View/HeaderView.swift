//
//  HeaderView.swift
//  Honeymoon
//
//  Created by LiemNH2 on 03/04/2022.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTY
    
    @Binding var showGuideView: Bool
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button {
                // ACTION
                print("action")
            } label: {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
            
            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)

            Spacer()
            
            Button {
                // ACTION
                self.showGuideView.toggle()
            } label: {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
            .sheet(isPresented: $showGuideView) {
                GuideView()
            }
        } //: HSTACK
        .padding()
    }
}

// MARK: - PREVIEW

struct HeaderView_Previews: PreviewProvider {
    @State static var showGuild: Bool = false
    static var previews: some View {
        HeaderView(showGuideView: $showGuild)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
