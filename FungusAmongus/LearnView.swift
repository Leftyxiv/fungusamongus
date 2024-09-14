//
//  LearnView.swift
//  FungusAmongus
//
//  Created by manny ledoux on 9/14/24.
//

import SwiftUI

struct LearnScreen: View {
    var body: some View {
        VStack {
            Text("Learn about Mushrooms")
                .font(.largeTitle)
                .padding()

            List {
                NavigationLink(destination: MushroomAnatomyView()) {
                    Text("Mushroom Anatomy")
                }

                NavigationLink(destination: FungusLifecycleView()) {
                    Text("Fungus Lifecycle")
                }
            }
        }
        .padding()
    }
}

// Placeholder views for navigated content
struct MushroomAnatomyView: View {
    var body: some View {
        Text("Mushroom Anatomy Details")
            .padding()
    }
}

struct FungusLifecycleView: View {
    var body: some View {
        Text("Fungus Lifecycle Details")
            .padding()
    }
}

struct LearnScreen_Previews: PreviewProvider {
    static var previews: some View {
        LearnScreen()
    }
}
