//
//  WeatherManager.swift
//  MarsWeather
//
//  Created by Haven Van Wormer on 11/6/21.
//

import Foundation



class WeatherManager: ObservableObject {
    @Published var weather = Weather(from: JS)
    private let apiManager = APIManager()
    
  
    
    func updateWeatherInfo() {
        apiManager.getWeather() { weather in
            self.weather = weather
        }
    }
    
    
    init() {
        self.updateWeatherInfo()
    }
    
    
    
}
