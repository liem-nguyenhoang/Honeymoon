//
//  ContentView.swift
//  Honeymoon
//
//  Created by LiemNH2 on 03/04/2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY
    
    @State var showAlert: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            HeaderView()
            
            Spacer()
            
            CardView(honeymoon: honeymoonData[2])
                .padding()
            
            Spacer()
            
            FooterView(showBookingAlert: $showAlert)
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("SUCCESS"), message:
                    Text("Wishing a lovely and most precious of the times together for the amazing couple"), dismissButton: .default(Text("Happy Honeymoon!")))
        }
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
