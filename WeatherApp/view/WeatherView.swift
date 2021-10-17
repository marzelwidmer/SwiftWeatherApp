//
//  WeatherView.swift
//  WeatherApp
//
//  Created by morpheus on 16.10.21.
//

import SwiftUI


struct WeatherView: View {
    @StateObject var viewModel = WeatherViewModle()
    
    var body: some View {
        NavigationView {
            VStack {
                Text((viewModel.timezone))
                    .font(.system(size: 32))
                Text(viewModel.temp)
                    .font(.system(size: 44))
                Text(viewModel.title)
                    .font(.system(size: 24))
                Text(viewModel.descriptionText)
                    .font(.system(size: 24))
            
            }.navigationTitle("Weather MVVM")
        }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
            .preferredColorScheme(.dark)
    }
}
