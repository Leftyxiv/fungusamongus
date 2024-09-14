//
//  ContentView.swift
//  FungusAmongus
//
//  Created by manny ledoux on 9/14/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 20)
            
            Text("The Fungus Amongus")
            
            
            HStack(spacing: 30) {
                Button(action: {
                    // Navigate to Discover Screen
                }) {
                    Text("Discover")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    // Navigate to Search Screen
                }) {
                    Text("Search")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    // Navigate to Learn Screen
                }) {
                    Text("Learn")
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
            }
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
