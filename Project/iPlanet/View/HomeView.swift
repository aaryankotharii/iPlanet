//
//  HomeView.swift
//  iPlanet
//
//  Created by Aaryan Kothari on 04/08/20.
//

import SwiftUI
import SceneKit

struct HomeView: View {
    //MARK - PROERTIES
    var planet : PlanetData
    @State var isAnimating : Bool = false
        
    // MARK - BODY
    var body: some View {
        VStack{
            SceneView(scene: SCNScene(named:  planet.modelName), options: [.allowsCameraControl,.autoenablesDefaultLighting])
                .frame(width: UIScreen.main.bounds.width*0.75, height: UIScreen.main.bounds.height/3)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
            
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
        .onAppear(perform: animatePlanet)
    }
    func animatePlanet(){
        withAnimation(.easeOut(duration: 0.5)) {
            isAnimating = true
        }
    } //: ANIMATE
}

// MARK - PREVIEW
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(planet: PlanetData(id: 1, name: "", modelName: "", details: ""))
    }
}
