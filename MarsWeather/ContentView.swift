//
//  ContentView.swift
//  MarsWeather
//
//  Created by Haven Van Wormer on 11/6/21.
//

import SwiftUI

struct ContentView: View {
    
   
    var body: some View {
        
        VStack(alignment: .center){
            locationView() .position(x: 200, y: 50)

            Spacer()
            Text("Sol 3527").font(.system(size: 36, weight: .bold)).foregroundColor(.white)
        }
        
       
        
        .background(
            Image("marsImg")
        )
    }
    
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
