//
//  ContentView.swift
//  Weather App
//
//  Created by Thomas Williams on 4/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(
                colors: [.blue, .white],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea() // Makes it go edge-to-edge
            
            VStack {
                Text("Cupertino, CA")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 50)
               
                
                VStack() {
                    Image(systemName: "cloud.sun.fill")
                        .symbolRenderingMode(.multicolor)
                        .font(. system(size: 100))
                    Text("72°")
                        .font(.system(size: 70))
                        .foregroundColor(.white)
                }
                .padding(.top, 30)
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    ContentView()
}
