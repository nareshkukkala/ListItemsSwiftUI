//
//  ContentView.swift
//  ListItemsSwiftUI
//
//  Created by naresh kukkala on 30/04/22.
//

import SwiftUI

struct ContentView: View {
    
    let animals = ["🐕", "🦓", "🐂", "🐅", "🐇", "🦛", "🦒"]
    
    var body: some View {
        List(animals.indices, id: \.self) { index in
            let animal = animals[index]
            HStack {
                Text(animal)
                    .font(.largeTitle)
                Spacer()
            }.background(index % 2 == 0 ? Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)): Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
