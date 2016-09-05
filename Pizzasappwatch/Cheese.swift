//
//  Cheese.swift
//  Pizzas
//
//  Created by Rodrigo Velazquez on 05/09/16.
//  Copyright © 2016 Rodrigo Velazquez. All rights reserved.
//

import WatchKit
import Foundation

var tamaño:String?
var masa:String?
class Cheese: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! Pizza
        tamaño = c.tamaño
        masa = c.masa
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func sinSelected() {
        let pizza = Pizza(t: tamaño!,m: masa!, q: "sin queso")
        pushControllerWithName("IngredientSelect", context: pizza)
    }
    @IBAction func chedSelected() {
        let pizza = Pizza(t: tamaño!,m: masa!, q: "cheddar")
        pushControllerWithName("IngredientSelect", context: pizza)
    }
    @IBAction func parSelected() {
        let pizza = Pizza(t: tamaño!,m: masa!, q: "parmesano")
        pushControllerWithName("IngredientSelect", context: pizza)
    }
    @IBAction func mozSelected() {
        let pizza = Pizza(t: tamaño!,m: masa!, q: "mozarella")
        pushControllerWithName("IngredientSelect", context: pizza)
    }
}
