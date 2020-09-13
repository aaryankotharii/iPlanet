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
                ZStack{
                    Color.white
                        .cornerRadius(20)
                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 5, y: 8)
                HomeView(planet: planet)
                }
                .padding(30)
                .padding(.bottom,30)
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
