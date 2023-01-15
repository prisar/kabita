//
//  ContentView.swift
//  kabita
//
//  Created by prisar on 12/02/22.
//

import SwiftUI

struct Joke: Codable {
    let value: String
}

struct ContentView: View {
    @State private var joke: String = ""
    
    var body: some View {
        Text(joke)
                Button {
                    Task {
                        let (data, _) = try await URLSession.shared.data(from: URL(string:"https://api.chucknorris.io/jokes/random")!)
                        let decodedResponse = try? JSONDecoder().decode(Joke.self, from: data)
                        joke = decodedResponse?.value ?? ""
                    }
                } label: {
                    Text("Fetch Joke")
                }
    }
                               
                               
                               
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
