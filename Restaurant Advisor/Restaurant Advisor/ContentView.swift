//
//  ContentView.swift
//  Restaurant Advisor
//
//  Created by Anis  on 05/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var restaurants = [Restaurant]()
    
    var body: some View {
        List(restaurants) { restaurant in
            Text("\(restaurant.name)")
        }
            .padding()
            .onAppear() {
                Api().loadData { (restaurants) in
                    self.restaurants = restaurants
                }
            }.navigationTitle("Restaurants Liste")
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
