//
//  Weather.swift
//  MarsWeather
//
//  Created by Haven Van Wormer on 11/6/21.
//



struct Weather: Codable, Identifiable {
    var id: Int?
    var soles: [Sole]?
}


// MARK: - Sole
struct Sole: Codable, Identifiable {
    var id, terrestrialDate, sol, ls: String
    var season: String
    var minTemp, maxTemp, pressure: String
    var pressureString, absHumidity, windSpeed, windDirection: String
    var atmoOpacity: String
    var sunrise, sunset: String
    var localUvIrradianceIndex: String
    var minGtsTemp, maxGtsTemp: String
}








// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let weather = try? newJSONDecoder().decode(Weather.self, from: jsonData)


