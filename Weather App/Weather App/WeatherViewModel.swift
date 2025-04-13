//
//  WeatherViewModel.swift
//  Weather App
//
//  Created by Thomas Williams on 4/13/25.
//

import Foundation


class WeatherViewModel: ObservableObject {
    @Published var temperature: String = "--"
    @Published var description: String = "Loading..."
    @Published var cityName: String = "--"
    
    private let apiKey = "dc5bca4271b18e17ae5179aa296f2160"
    private let city = "Bushnell" // future grab location
    
    func fetchWeather() {
        let urlString =
                "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(apiKey)&units=imperial"
                
                guard let url = URL(string: urlString) else { return }

                URLSession.shared.dataTask(with: url) { data, _, error in
                    guard let data = data, error == nil else {
                        print("\(String(describing: error))")
                        return
                    }

                    if let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data) {
                        DispatchQueue.main.async {
                            self.temperature = "\(Int(weatherResponse.main.temp))°"
                            self.description = weatherResponse.weather.first?.description.capitalized ?? ""
                            self.cityName = weatherResponse.name
                        }
                        
                        print("Temperature: \(weatherResponse.main.temp)")
                        print("Description: \(weatherResponse.weather.first?.description ?? "")")
                        print("City: \(weatherResponse.name)")
                    }
                }.resume()
    }
}
