//
//  OrderView.swift
//  MidtermKunalB
//
//  Created by Kunal Bajaj on 2024-10-16.
//

import SwiftUI

struct OrderView: View {
    @State var name: String = ""
    @State var numPizza: String = ""
    // list of sizes
    var sizes = ["Small", "Medium", "Large"]
    @State private var selectedSize = "Medium"
    
    @State private var pepperoni: Bool = true
    @State private var cheese = true
    @State private var olives: Bool = true

    var body: some View {
        
        NavigationView{
            
            VStack{
                Text("Midterm Exam")
                    .font(.title)
                Spacer()
                
                // TODO: Adjust styling later
                HStack{
                    Text("Customer Name: ")
                    TextField("enter your name, ex: Kunal ", text: $name)}
                .padding()
                
                // Pizza Size Picker
                Text("Select Pizza Size")
                    .font(.headline)
                    .padding()
                Picker("Please choose the size of Pizza", selection: $selectedSize) {
                    ForEach(sizes, id: \.self) {
                        Text($0)
                    }
                }.pickerStyle(.segmented)
                    .padding()
                
                Toggle("Pepperoni", isOn: $pepperoni).padding()
                Toggle("Cheese", isOn: $cheese).padding()
                Toggle("Olives", isOn: $olives).padding()
                
                // TODO: Add Styling
                HStack{
                    Text("Number of Pizza: ")
                    TextField("enter number of pizza, ex: 2 ", text: $numPizza)
                        .keyboardType(.numberPad)
                }.padding()
                Spacer()
                
                
                    
                    NavigationLink(destination: SummaryView(name: name, pizza: Pizza(size: selectedSize, pepperoni: pepperoni, cheese: cheese, olives: olives, numPizzas: Int(numPizza) ?? 0))){
                        Text("Place Order")
                            .font(.title)
                    }.disabled(!inputValidation())
                
                
            }.padding()
        }
    }
    func inputValidation() -> Bool{
        // TODO: Validate user input, if valid enable navigation link else keep it diabled.
        if((Int(numPizza) ) == nil || Int(numPizza)! < 0){
            return false
        }
        return true
    }
}
#Preview {
    OrderView()
}
