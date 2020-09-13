//
//  HomeView.swift
//  iPlanet
//
//  Created by Aaryan Kothari on 04/08/20.
//

import SwiftUI
import SceneKit

struct HomeView: View {
    
    var planet : PlanetData
        
    var body: some View {
        VStack{
            SceneView(scene: SCNScene(named:  planet.modelName), options: [.allowsCameraControl,.autoenablesDefaultLighting])
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2)
            
            Text(planet.name)
                .foregroundColor(.primary)
                .font(.system(size: 45, weight: .bold, design: .monospaced))
            
            ScrollView([.vertical], showsIndicators: false){
                Text(planet.details)
                    .foregroundColor(.primary)
            } //: SCROLL
            .padding(.horizontal)
            Spacer()
        } //: VSTACK
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(planet: <#PlanetData#>)
    }
}
