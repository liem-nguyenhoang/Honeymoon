//
//  GuideComponent.swift
//  Honeymoon
//
//  Created by LiemNH2 on 03/04/2022.
//

import SwiftUI

struct GuideComponent: View {
    // MARK: - PROPERTY
    
    var title: String
    var subtitle: String
    var description: String
    var icon: String
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(Color.pink)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack{
                    Text(title.uppercased())
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    Spacer()
                    
                    Text(subtitle.uppercased())
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundColor(Color.pink)
                } //: HSTACK
                
                Divider().padding(.bottom, 4)
                
                Text(description)
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            } //: VSTACK
        } //: HSTACK
    }
}

// MARK: - PREVIEW

struct GuideComponent_Previews: PreviewProvider {
    static var previews: some View {
        GuideComponent(
            title: "Title",
            subtitle: "Subtitle",
            description: "Description",
            icon: "heart.circle")
            .previewLayout(.sizeThatFits)
    }
}
