//
//  WeatherVM.swift
//  WeatherApp
//
//  Created by morpheus on 16.10.21.
//

// Data needed by view

import Foundation


class WeatherViewModle : ObservableObject {
    @Published var title: String = "-"
    @Published var descriptionText: String = "-"
    @Published var temp : String = "-"
    @Published var timezone: String = "-"
    
    
    init() {
        fetchWeather()
    }
    
    func fetchWeather() {
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/onecall?lat=47.346606&lon=8.337156&units=metric&exclude=hourly,daily&appid=APIKEY") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url){ data, _, error in
            guard let data = data, error == nil else {
                return
            }
            // Convert data to Model
            do {
                let model = try JSONDecoder().decode(Weather.self, from: data)
                
                DispatchQueue.main.async {
                    self.title = model.current.weather.first?.main ?? "No Title"
                    self.descriptionText = model.current.weather.first?.description ?? "No Description"
                    self.temp = "\(model.current.temp)°"
                    self.timezone = model.timezone
                }
            } catch {
                print("API call failed.")
            }
        }
        task.resume()
        
                            
    }
}
