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
        Text(WEATHERDATA.soles.first?.maxTemp ?? "w").foregroundColor(.white).onAppear(perform: {
            print(WEATHERDATA.soles.first?.maxTemp)
        })
    }
}

