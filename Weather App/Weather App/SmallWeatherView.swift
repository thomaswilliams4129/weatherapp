//
//  SmallWeatherView.swift
//  Weather App
//
//  Created by Thomas Williams on 4/13/25.
//

import SwiftUI

struct SmallWeatherView: View {
    let day: String
    let icon: String
    let temperature: String
    
    var body: some View {
        VStack(alignment: .center) {
            Text("\(day)")
                .font(.headline)
                .bold()
                .foregroundColor(.white)
            
            Image(systemName: "\(icon)")
                .symbolRenderingMode(.multicolor)
                .font(.system(size: 20))
            
            Text("\(temperature)°")
                .font(.system(size: 25))
                .bold()
                .foregroundColor(.white)
        }
        .padding()
    }
}

#Preview {
    SmallWeatherView(day: "MON", icon: "cloud.sun.fill", temperature: "72")
}
