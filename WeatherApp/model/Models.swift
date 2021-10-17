//
//  Weather.swift
//  WeatherApp
//
//  Created by morpheus on 16.10.21.
//

import Foundation

struct Weather : Codable {
    let timezone : String
    let current : CurrentWeather
}

struct CurrentWeather : Codable {
    let temp: Float
    let weather: [WeatherInfo]
}

struct WeatherInfo : Codable {
    let main: String
    let description: String
}
