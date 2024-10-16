//
//  OrderView.swift
//  MidtermKunalB
//
//  Created by Kunal Bajaj on 2024-10-16.
//

import SwiftUI

struct OrderView: View {
    // list of sizes
    var sizes = ["Small", "Medium", "Large"]
    @State private var selectedSize = "Medium"
    
    @State private var pepperoni: Bool = true
    @State private var cheese = true
    @State private var olives: Bool = true
    
    
    
    
    var body: some View {
        
        @State var name: String = ""
        @State var numPizza: String = ""
        VStack{
            
            // TODO: Adjust styling later
            HStack{
                Text("Customer Name: ")
                TextField("enter your name, ex: Kunal ", text: $name)}
            
            // Pizza Size Picker
            Text("Select Pizza Size")
                .font(.headline)
            Picker("Please choose the size of Pizza", selection: $selectedSize) {
                ForEach(sizes, id: \.self) {
                    Text($0)
                }
            }
            
            Toggle("Pepperoni", isOn: $pepperoni)
            Toggle("Cheese", isOn: $cheese)
            Toggle("Olives", isOn: $olives)}
    }
}
#Preview {
    OrderView()
}
