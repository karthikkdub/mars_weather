//
//  locationView.swift
//  MarsWeather
//
//  Created by Haven Van Wormer on 11/6/21.
//

import SwiftUI

struct locationView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Curiosity Rover").font(.system(size: 36, weight: .semibold))
            Text("Gale Crater").font(.system(size: 25)).italic()
        }.foregroundColor(.white)
    }
}

struct locationView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.black)
            locationView()
        }
        
    }
}
