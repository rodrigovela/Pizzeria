//
//  Size.swift
//  Pizzas
//
//  Created by Rodrigo Velazquez on 05/09/16.
//  Copyright © 2016 Rodrigo Velazquez. All rights reserved.
//

import WatchKit
import Foundation


class Size: WKInterfaceController {

    
    @IBOutlet var sizeLabel: WKInterfaceLabel!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
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

    @IBAction func smallSelected() {
        let pizza = Pizza(t: "Chica")
        self.pushControllerWithName("MassSelect", context: pizza)
    }
    
    @IBAction func mediumSelected() {
        let pizza = Pizza(t: "Mediana")
        self.pushControllerWithName("MassSelect", context: pizza)
    }
    
    @IBAction func bigSelected() {
        let pizza = Pizza(t: "Grande")
        self.pushControllerWithName("MassSelect", context: pizza)
    }
}
