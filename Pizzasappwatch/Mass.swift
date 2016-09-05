//
//  Mass.swift
//  Pizzas
//
//  Created by Rodrigo Velazquez on 05/09/16.
//  Copyright © 2016 Rodrigo Velazquez. All rights reserved.
//

import WatchKit
import Foundation

var size:String? = nil

class Mass: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! Pizza
        size = c.tamaño
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func bigSelected() {
        let pizza = Pizza(t: size!, m: "Gruesa")
        pushControllerWithName("CheeseSelect", context: pizza)
    }
    
    @IBAction func thinSelected() {
        let pizza = Pizza(t: size!, m: "Delgada")
        pushControllerWithName("CheeseSelect", context: pizza)
    }
    
    @IBAction func crunchySelected() {
        let pizza = Pizza(t: size!, m: "Crujiente")
        pushControllerWithName("CheeseSelect", context: pizza)
    }
}
