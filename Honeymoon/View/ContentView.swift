//
//  ContentView.swift
//  Honeymoon
//
//  Created by LiemNH2 on 03/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            Spacer()
            
            CardView(honeymoon: honeymoonData[2])
                .padding()
            
            Spacer()
            
            FooterView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
