//
//  MainData.swift
//  MarsWeather
//
//  Created by Haven Van Wormer on 11/7/21.
//

import SwiftUI

struct MainData: View {
    
    
    var unitSystem: Unit
    var WEATHERDATA: Weather
    
    init(data: Weather, units: Unit = .F) {
        self.WEATHERDATA = data
        unitSystem = units
    }
    
    
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

