//
//  Pizza.swift
//  MidtermKunal
//
//  Created by Kunal Bajaj on 2024-10-16.
//

import Foundation

// Structure of Pizza as defined by the midterm
struct Pizza{
    
    // required fields
    var size: String
    var pepperoni: Bool
    var cheese:Bool
    var olives:Bool
    var numPizzas:Int
    
    // function to determine pizzaPrice based on the size
    func pizzaPrice() -> Double{
        switch size {
            case "Small":
                return 10.00
            case "Medium":
                return 12.00
            case "Large":
                return 14.00
            default :
                return 0.00
        }
        
    }
    
    /*
    Function to calculate totalPrice based on following criteria:
    Total Price:
    pizza Price * number of Pizzas (note pizza price is $10 if the
    size is small, $12 if the size is medium, $15 if the size is large) add $1
    for each selected topping (pepperoni, Cheese, Olives )
     */
    func totalPrice() -> Double{
        
        return (pizzaPrice() * Double(numPizzas)) + (pepperoni ? 1.00 : 0.00) + (cheese ? 1.00 : 0.00) + (olives ? 1.00 : 0.00)
        
    }
    
    
}
