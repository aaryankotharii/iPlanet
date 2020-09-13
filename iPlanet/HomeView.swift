//
//  HomeView.swift
//  iPlanet
//
//  Created by Aaryan Kothari on 04/08/20.
//

import SwiftUI
import SceneKit

struct HomeView: View {
    
    @State var planets = [
        
        PlanetData(id: 0, name: "Earth", modelName: "Earth.usdz", details: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. According to radiometric dating estimation and other evidence, Earth formed over 4.5 billion years ago. Earth's gravity interacts with other objects in space, especially the Sun and the Moon, which is Earth's only natural satellite. Earth orbits around the Sun in 365.256 solar days."),
        
        PlanetData(id: 0, name: "Jupiter", modelName: "Jupiter.usdz", details: "Jupiter is the largest planet in our solar system at nearly 11 times the size of Earth and 317 times its mass. Jupiter, being the biggest planet, gets its name from the king of the ancient Roman gods."),
        
        PlanetData(id: 0, name: "Mars", modelName: "Mars.usdz", details: "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, being only larger than Mercury. In English, Mars carries the name of the Roman god of war and is often referred to as the Red Planet."),
        
        PlanetData(id: 0, name: "Pluto", modelName: "Pluto.usdz",details: "Pluto is an icy dwarf planet in the Kuiper belt, a ring of bodies beyond the orbit of Neptune. It was the first and the largest Kuiper belt object to be discovered. Pluto was discovered by Clyde Tombaugh in 1930 and declared to be the ninth planet from the Sun."),
        
        PlanetData(id: 0, name: "Venus", modelName: "Venus.usdz",details: "Venus is the second planet from the Sun. It is named after the Roman goddess of love and beauty. As the second-brightest natural object in the night sky after the Moon, Venus can cast shadows and can be, on rare occasion, visible to the naked eye in broad daylight."),
        
        PlanetData(id: 0, name: "Mercury", modelName: "Mercury.usdz",details: "Mercury is the smallest and innermost planet in the Solar System. Its orbit around the Sun takes 87.97 days, the shortest of all the planets in the Solar System. It is named after the Roman deity Mercury, the messenger of the gods."),
        
        PlanetData(id: 0, name: "Moon", modelName: "Moon.usdz",details: "The Moon is an astronomical body orbiting Earth and is the planet's only natural satellite. It is the fifth-largest satellite in the Solar System, and by far the largest among planetary satellites relative to the size of the planet that it orbits."),
        
        PlanetData(id: 0, name: "Neptune", modelName: "Neptune.usdz",details: "Neptune is the eighth and farthest-known planet from the Sun in the Solar System. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet. Neptune is 17 times the mass of Earth, slightly more massive than its near-twin Uranus."),
        
        PlanetData(id: 0, name: "Sun", modelName: "Sun.usdz",details: "The Sun is the star at the center of the Solar System. It is a nearly perfect sphere of hot plasma, with internal convective motion that generates a magnetic field via a dynamo process. It is by far the most important source of energy for life on Earth."),
        
        PlanetData(id: 0, name: "Uranus", modelName: "Uranus.usdz",details: "Uranus is the seventh planet from the Sun. The name 'Uranus' is a reference to the Greek god of the sky, Uranus. According to Greek mythology, Uranus was the grandfather of Zeus and father of Cronus. It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System."),
        
        PlanetData(id: 0, name: "Saturn", modelName: "Saturn.usdz",details: "Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine times that of Earth. It only has one-eighth the average density of Earth; however, with its larger volume, Saturn is over 95 times more massive."),
    ]
    
    @State var index = 0
    
    var body: some View {
        VStack{
            SceneView(scene: SCNScene(named:  "Earth.usdz"), options: [.allowsCameraControl,.autoenablesDefaultLighting])
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2)
            Text("HELLO")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
