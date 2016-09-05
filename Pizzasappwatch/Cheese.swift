//
//  Cheese.swift
//  Pizzas
//
//  Created by Rodrigo Velazquez on 05/09/16.
//  Copyright © 2016 Rodrigo Velazquez. All rights reserved.
//

import WatchKit
import Foundation


class Cheese: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! Pizza
        
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
    }
    @IBAction func chedSelected() {
    }
    @IBAction func parSelected() {
    }
    @IBAction func mozSelected() {
    }
}
