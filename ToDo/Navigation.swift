//
//  Navigation.swift
//  ToDo
//
//  Created by SHIBU DANIEL on 10/12/20.
//

import SwiftUI

struct FlavorView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Chocolate")
                Text("Vanilla")
                Text("Strawberry")
            }
            .navigationBarTitle(Text("Today‘s Flavors"))
            .navigationBarItems(leading:
                HStack {
                    Button("Hours") {
                        print("Hours tapped!")
                    }
                }, trailing:
                HStack {
                    Button("Favorites") {
                        print("Favorites tapped!")
                    }

                    Button("Specials") {
                        print("Specials tapped!")
                    }
                }
            )
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        FlavorView()
    }
}
