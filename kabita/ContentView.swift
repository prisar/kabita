//
//  ContentView.swift
//  kabita
//
//  Created by prisar on 12/02/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Section(header: HStack {
                Image(systemName: "person.fill")
                Text("Corporate Users")
                }) {
                    ForEach(0..<3) { index in
        48
        HStack {
                            Image(systemName: "person")
                            Text("User id : \(index)")
        } }
        } }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
