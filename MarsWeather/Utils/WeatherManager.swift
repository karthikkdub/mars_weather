//
//  WeatherManager.swift
//  MarsWeather
//
//  Created by Haven Van Wormer on 11/6/21.
//

import Foundation

class WeatherManager: NSObject, ObservableObject {
    @Published private(set) var weather = Weather()
    private let apiManager = APIManager()
    
    
    func updateWeatherInfo() {
        apiManager.getWeather() { weather in
            self.weather = weather
        }
        
    }
    
}

