//
//  WeatherResponse.swift
//  Weather App
//
//  Created by Thomas Williams on 4/13/25.
//

import Foundation

struct WeatherResponse: Codable {
    let main: Main
    let weather: [Weather]
    let name: String
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let description: String
    let icon: String
}
