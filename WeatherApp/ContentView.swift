//
//  ContentView.swift
//  WeatherApp
//
//  Created by morpheus on 16.10.21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        WeatherView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
