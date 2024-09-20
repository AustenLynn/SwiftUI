//
//  ContentView.swift
//  ola
//
//  Created by D0501 on 20/09/24.
//

import SwiftUI

struct ContentView: View {
    @State var monto = "1000"
    @State var porcentaje = 10.0
    
    
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "dollarsign")
                    .imageScale(.large)
                    .foregroundStyle(.yellow)
                
                Text("Calculadora de propinas")
                Image(systemName: "dollarsign.circle.fill")
                    .imageScale(.large)
                    .foregroundColor(.green)
            }
            
            HStack{
             Text("$")
            TextField("Monto", text: $monto)
            
            }
            HStack{
                Slider(value: $porcentaje, in:  5...100, step:5)
                Text(String(porcentaje))
            }
            
            HStack{
                Text("Propina:")
                if let total = Double(monto){
                    let propina = total * porcentaje / 100
                    let monto_total = (Double(monto) ?? 0)  + (propina)
                    Text(String(propina))
                    Text("Total" + String(monto_total) )
                }else{
                    Text("Debes ingresar el monto en moneda")
                        .foregroundColor(.red)
                }
                
            }
            Spacer()
            
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
