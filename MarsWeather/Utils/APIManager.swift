//
//  APIManager.swift
//  MarsWeather
//
//  Created by Haven Van Wormer on 11/6/21.
//

import Foundation

class APIManager {
    private let apiAddress = "https://mars.nasa.gov/rss/api/?feed=weather&category=msl&feedtype=json"
    
    public func getWeather(completion: @escaping (Weather) -> ()) {
        guard let url = URL(string: apiAddress) else {return}
        
        print("Start API Fetch")
        URLSession.shared.dataTask(with: url){ data, response, error_ in
            if let error = error_ {
                print("API Request Error: \(error.localizedDescription)")
            } else {
                if let data = data {
                    do {
                        print("End API Fetch")
                        let weather = try JSONDecoder().decode(Weather.self, from: data)
                        print(weather)
                        
                        DispatchQueue.main.async {
                            completion(weather)
                        }
                        
                    } catch {
                        print("JSON Decoding Error: \(error.localizedDescription)")
                    }
                }
            }
        }.resume()
    }
}
