//
//  ContentView.swift
//  kabita
//
//  Created by prisar on 12/02/22.
//

import SwiftUI

struct Seat {
    var seatNumber: Int
    @State private var booked = false

    mutating func bookSeat(seatNumber: Int) {
        self.seatNumber = seatNumber
    }
    
//    var toggleBooking: Bool {
//                return self.booked.toggle()
//    }
}

struct ContentView: View {
    private let radius: CGFloat = 25.0
    
    var body: some View {
        ZStack {
                        Circle().fill(Color.green)
                        Circle().fill(Color.yellow).scaleEffect(0.8)
                        Circle().fill(Color.orange).scaleEffect(0.6)
                        Circle().fill(Color.red).scaleEffect(0.4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
