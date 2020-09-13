//
//  ContentView.swift
//  iPlanet
//
//  Created by Aaryan Kothari on 13/09/20.
//

import SwiftUI

struct ContentView: View {
    
    var solarSystem : [PlanetData] = planets
    
    var body: some View {
        TabView {
            ForEach(solarSystem) { planet in
                HomeView(planet: planet)
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
