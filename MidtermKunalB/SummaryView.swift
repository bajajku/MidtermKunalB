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
        Text("Hi, \(name)!")
        Text("Your Order Details")
        Text("\(pizza.size) Pizza")
        Text("Topping: \(toppings())")
        Text("Quantity: \(pizza.numPizzas)")
        Text("Total: \(pizza.totalPrice())")
    }
}

//#Preview {
//    SummaryView()
//}
