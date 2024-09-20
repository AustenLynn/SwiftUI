//
//  ContentView.swift
//  ola
//
//  Created by D0501 on 20/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "bolt.heart.fill")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hola Mundo en SwiftUI")
                    .foregroundColor(.pink)
                
                Image(systemName: "pencil")
                    .imageScale(.large)
                    .foregroundColor(.red)
            }
            .padding()
            Text("Hola")
                .padding()
            Text("Soy")
                .padding()
            Text("Maikol")
                .padding()
            Image(systemName: "heart.square.fill")
                .foregroundColor(.red)
            
        }
    }
}
#Preview {
    ContentView()
}
