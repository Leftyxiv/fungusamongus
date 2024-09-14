//
//  SearchView.swift
//  FungusAmongus
//
//  Created by manny ledoux on 9/14/24.
//

import SwiftUI

struct SearchScreen: View {
    @State private var query: String = ""
    @State private var searchResults: [String] = ["Mushroom 1", "Mushroom 2"]

    var body: some View {
        VStack {
            TextField("Search for mushrooms...", text: $query, onCommit: {
                // Perform search with query
            })
            .padding()
            .textFieldStyle(RoundedBorderTextFieldStyle())

            List(searchResults, id: \.self) { result in
                Button(action: {
                    // Navigate to detail view of the mushroom
                }) {
                    Text(result)
                }
            }
        }
        .padding()
    }
}

struct SearchScreen_Previews: PreviewProvider {
    static var previews: some View {
        SearchScreen()
    }
}
