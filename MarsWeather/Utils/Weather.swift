//
//  Weather.swift
//  MarsWeather
//
//  Created by Haven Van Wormer on 11/6/21.
//



struct Weather: Codable {

    let descriptions: Descriptions
    let soles: [Soles]

    private enum CodingKeys: String, CodingKey {
        case descriptions = "descriptions"
        case soles = "soles"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        descriptions = try values.decode(Descriptions.self, forKey: .descriptions)
        soles = try values.decode([Soles].self, forKey: .soles)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(descriptions, forKey: .descriptions)
        try container.encode(soles, forKey: .soles)
    }

}

struct Descriptions: Codable {

    let disclaimerEn: String
    let disclaimerEs: String
    let solDescEn: String
    let solDescEs: String
    let terrestrialDateDescEn: String
    let terrestrialDateDescEs: String
    let tempDescEn: String
    let tempDescEs: String
    let pressureDescEn: String
    let pressureDescEs: String
    let absHumidityDescEn: String
    let absHumidityDescEs: String
    let windDescEn: String
    let windDescEs: String
    let gtsTempDescEn: String
    let gtsTempDescEs: String
    let localUvIrradianceIndexDescEn: String
    let localUvIrradianceIndexDescEs: String
    let atmoOpacityDescEn: String
    let atmoOpacityDescEs: String
    let lsDescEn: String
    let lsDescEs: String
    let seasonDescEn: String
    let seasonDescEs: String
    let sunriseSunsetDescEn: String
    let sunriseSunsetDescEs: String

    private enum CodingKeys: String, CodingKey {
        case disclaimerEn = "disclaimer_en"
        case disclaimerEs = "disclaimer_es"
        case solDescEn = "sol_desc_en"
        case solDescEs = "sol_desc_es"
        case terrestrialDateDescEn = "terrestrial_date_desc_en"
        case terrestrialDateDescEs = "terrestrial_date_desc_es"
        case tempDescEn = "temp_desc_en"
        case tempDescEs = "temp_desc_es"
        case pressureDescEn = "pressure_desc_en"
        case pressureDescEs = "pressure_desc_es"
        case absHumidityDescEn = "abs_humidity_desc_en"
        case absHumidityDescEs = "abs_humidity_desc_es"
        case windDescEn = "wind_desc_en"
        case windDescEs = "wind_desc_es"
        case gtsTempDescEn = "gts_temp_desc_en"
        case gtsTempDescEs = "gts_temp_desc_es"
        case localUvIrradianceIndexDescEn = "local_uv_irradiance_index_desc_en"
        case localUvIrradianceIndexDescEs = "local_uv_irradiance_index_desc_es"
        case atmoOpacityDescEn = "atmo_opacity_desc_en"
        case atmoOpacityDescEs = "atmo_opacity_desc_es"
        case lsDescEn = "ls_desc_en"
        case lsDescEs = "ls_desc_es"
        case seasonDescEn = "season_desc_en"
        case seasonDescEs = "season_desc_es"
        case sunriseSunsetDescEn = "sunrise_sunset_desc_en"
        case sunriseSunsetDescEs = "sunrise_sunset_desc_es"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        disclaimerEn = try values.decode(String.self, forKey: .disclaimerEn)
        disclaimerEs = try values.decode(String.self, forKey: .disclaimerEs)
        solDescEn = try values.decode(String.self, forKey: .solDescEn)
        solDescEs = try values.decode(String.self, forKey: .solDescEs)
        terrestrialDateDescEn = try values.decode(String.self, forKey: .terrestrialDateDescEn)
        terrestrialDateDescEs = try values.decode(String.self, forKey: .terrestrialDateDescEs)
        tempDescEn = try values.decode(String.self, forKey: .tempDescEn)
        tempDescEs = try values.decode(String.self, forKey: .tempDescEs)
        pressureDescEn = try values.decode(String.self, forKey: .pressureDescEn)
        pressureDescEs = try values.decode(String.self, forKey: .pressureDescEs)
        absHumidityDescEn = try values.decode(String.self, forKey: .absHumidityDescEn)
        absHumidityDescEs = try values.decode(String.self, forKey: .absHumidityDescEs)
        windDescEn = try values.decode(String.self, forKey: .windDescEn)
        windDescEs = try values.decode(String.self, forKey: .windDescEs)
        gtsTempDescEn = try values.decode(String.self, forKey: .gtsTempDescEn)
        gtsTempDescEs = try values.decode(String.self, forKey: .gtsTempDescEs)
        localUvIrradianceIndexDescEn = try values.decode(String.self, forKey: .localUvIrradianceIndexDescEn)
        localUvIrradianceIndexDescEs = try values.decode(String.self, forKey: .localUvIrradianceIndexDescEs)
        atmoOpacityDescEn = try values.decode(String.self, forKey: .atmoOpacityDescEn)
        atmoOpacityDescEs = try values.decode(String.self, forKey: .atmoOpacityDescEs)
        lsDescEn = try values.decode(String.self, forKey: .lsDescEn)
        lsDescEs = try values.decode(String.self, forKey: .lsDescEs)
        seasonDescEn = try values.decode(String.self, forKey: .seasonDescEn)
        seasonDescEs = try values.decode(String.self, forKey: .seasonDescEs)
        sunriseSunsetDescEn = try values.decode(String.self, forKey: .sunriseSunsetDescEn)
        sunriseSunsetDescEs = try values.decode(String.self, forKey: .sunriseSunsetDescEs)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(disclaimerEn, forKey: .disclaimerEn)
        try container.encode(disclaimerEs, forKey: .disclaimerEs)
        try container.encode(solDescEn, forKey: .solDescEn)
        try container.encode(solDescEs, forKey: .solDescEs)
        try container.encode(terrestrialDateDescEn, forKey: .terrestrialDateDescEn)
        try container.encode(terrestrialDateDescEs, forKey: .terrestrialDateDescEs)
        try container.encode(tempDescEn, forKey: .tempDescEn)
        try container.encode(tempDescEs, forKey: .tempDescEs)
        try container.encode(pressureDescEn, forKey: .pressureDescEn)
        try container.encode(pressureDescEs, forKey: .pressureDescEs)
        try container.encode(absHumidityDescEn, forKey: .absHumidityDescEn)
        try container.encode(absHumidityDescEs, forKey: .absHumidityDescEs)
        try container.encode(windDescEn, forKey: .windDescEn)
        try container.encode(windDescEs, forKey: .windDescEs)
        try container.encode(gtsTempDescEn, forKey: .gtsTempDescEn)
        try container.encode(gtsTempDescEs, forKey: .gtsTempDescEs)
        try container.encode(localUvIrradianceIndexDescEn, forKey: .localUvIrradianceIndexDescEn)
        try container.encode(localUvIrradianceIndexDescEs, forKey: .localUvIrradianceIndexDescEs)
        try container.encode(atmoOpacityDescEn, forKey: .atmoOpacityDescEn)
        try container.encode(atmoOpacityDescEs, forKey: .atmoOpacityDescEs)
        try container.encode(lsDescEn, forKey: .lsDescEn)
        try container.encode(lsDescEs, forKey: .lsDescEs)
        try container.encode(seasonDescEn, forKey: .seasonDescEn)
        try container.encode(seasonDescEs, forKey: .seasonDescEs)
        try container.encode(sunriseSunsetDescEn, forKey: .sunriseSunsetDescEn)
        try container.encode(sunriseSunsetDescEs, forKey: .sunriseSunsetDescEs)
    }

}

struct Soles: Codable {

    let id: String
    let terrestrialDate: String
    let sol: String
    let ls: String
    let season: String
    let minTemp: String
    let maxTemp: String
    let pressure: String
    let pressureString: String
    let absHumidity: String
    let windSpeed: String
    let windDirection: String
    let atmoOpacity: String
    let sunrise: String
    let sunset: String
    let localUvIrradianceIndex: String
    let minGtsTemp: String
    let maxGtsTemp: String

    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case terrestrialDate = "terrestrial_date"
        case sol = "sol"
        case ls = "ls"
        case season = "season"
        case minTemp = "min_temp"
        case maxTemp = "max_temp"
        case pressure = "pressure"
        case pressureString = "pressure_string"
        case absHumidity = "abs_humidity"
        case windSpeed = "wind_speed"
        case windDirection = "wind_direction"
        case atmoOpacity = "atmo_opacity"
        case sunrise = "sunrise"
        case sunset = "sunset"
        case localUvIrradianceIndex = "local_uv_irradiance_index"
        case minGtsTemp = "min_gts_temp"
        case maxGtsTemp = "max_gts_temp"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decode(String.self, forKey: .id)
        terrestrialDate = try values.decode(String.self, forKey: .terrestrialDate)
        sol = try values.decode(String.self, forKey: .sol)
        ls = try values.decode(String.self, forKey: .ls)
        season = try values.decode(String.self, forKey: .season)
        minTemp = try values.decode(String.self, forKey: .minTemp)
        maxTemp = try values.decode(String.self, forKey: .maxTemp)
        pressure = try values.decode(String.self, forKey: .pressure)
        pressureString = try values.decode(String.self, forKey: .pressureString)
        absHumidity = try values.decode(String.self, forKey: .absHumidity)
        windSpeed = try values.decode(String.self, forKey: .windSpeed)
        windDirection = try values.decode(String.self, forKey: .windDirection)
        atmoOpacity = try values.decode(String.self, forKey: .atmoOpacity)
        sunrise = try values.decode(String.self, forKey: .sunrise)
        sunset = try values.decode(String.self, forKey: .sunset)
        localUvIrradianceIndex = try values.decode(String.self, forKey: .localUvIrradianceIndex)
        minGtsTemp = try values.decode(String.self, forKey: .minGtsTemp)
        maxGtsTemp = try values.decode(String.self, forKey: .maxGtsTemp)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(terrestrialDate, forKey: .terrestrialDate)
        try container.encode(sol, forKey: .sol)
        try container.encode(ls, forKey: .ls)
        try container.encode(season, forKey: .season)
        try container.encode(minTemp, forKey: .minTemp)
        try container.encode(maxTemp, forKey: .maxTemp)
        try container.encode(pressure, forKey: .pressure)
        try container.encode(pressureString, forKey: .pressureString)
        try container.encode(absHumidity, forKey: .absHumidity)
        try container.encode(windSpeed, forKey: .windSpeed)
        try container.encode(windDirection, forKey: .windDirection)
        try container.encode(atmoOpacity, forKey: .atmoOpacity)
        try container.encode(sunrise, forKey: .sunrise)
        try container.encode(sunset, forKey: .sunset)
        try container.encode(localUvIrradianceIndex, forKey: .localUvIrradianceIndex)
        try container.encode(minGtsTemp, forKey: .minGtsTemp)
        try container.encode(maxGtsTemp, forKey: .maxGtsTemp)
    }
}



// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let weather = try? newJSONDecoder().decode(Weather.self, from: jsonData)


