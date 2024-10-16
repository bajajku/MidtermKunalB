//
//  SummaryView.swift
//  MidtermKunalB
//
//  Created by Kunal Bajaj on 2024-10-16.
//

import SwiftUI

struct SummaryView: View {
    @State var name: String = ""
    @State var pizza: Pizza
    
    func toppings() -> String {
        
        var string = ""
        if(pizza.pepperoni) {
            string += "Pepperoni"
        }
        if (pizza.cheese) {
            string += ", Cheese"
        }
        if (pizza.olives) {
            string += ", Olives"
        }
        
        
        return string
    }
    
    var body: some View {
        Text("Welcome to the Pizza Store!")
            .font(.title)
        Spacer()
        Text("Hi, \(name)!")
            .font(.headline)
        Text("Your Order Details")
            .font(.headline)
        Text("\(pizza.size) Pizza")
            .font(.headline)
        Text("Topping: \(toppings())")
            .font(.headline)
        Text("Quantity: \(pizza.numPizzas)")
            .font(.headline)
        Text("Total: \(pizza.totalPrice()) $")
            .font(.headline)
        Spacer()
    }
}

//#Preview {
//    SummaryView()
//}
