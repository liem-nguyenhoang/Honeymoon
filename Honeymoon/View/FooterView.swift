//
//  FooterView.swift
//  Honeymoon
//
//  Created by LiemNH2 on 03/04/2022.
//

import SwiftUI

struct FooterView: View {
    // MARK: - PROPERTY
    
    @Binding var showBookingAlert: Bool
    
    // MARK: - BODY
    var body: some View {
        HStack {
            
            Image(systemName: "xmark.circle")
                .font(.system(size: 42, weight: .light))
            
            Spacer()
            
            Button {
                self.showBookingAlert.toggle()
            } label: {
                Text("Book Destination".uppercased())
                    .font(.system(.subheadline, design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 12)
                    .accentColor(Color.pink)
                    .background(Capsule().stroke(Color.pink, lineWidth: 2))
            }
            
            Spacer()
            
            Image(systemName: "heart.circle")
                .font(.system(size: 42, weight: .light))

            
        } //: HSTACK
    }
}

// MARK: - PREVIEW

struct FooterView_Previews: PreviewProvider {
    @State static var showAlert: Bool = false
    
    static var previews: some View {
        FooterView(showBookingAlert: $showAlert)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
