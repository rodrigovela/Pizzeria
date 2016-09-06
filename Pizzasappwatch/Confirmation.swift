//
//  Confirmation.swift
//  Pizzas
//
//  Created by Rodrigo Velazquez on 05/09/16.
//  Copyright © 2016 Rodrigo Velazquez. All rights reserved.
//

import WatchKit
import Foundation


class Confirmation: WKInterfaceController {

    @IBOutlet var ingredLabel: WKInterfaceLabel!
    @IBOutlet var cheeseLabel: WKInterfaceLabel!
    @IBOutlet var massLabel: WKInterfaceLabel!
    @IBOutlet var sizeLabel: WKInterfaceLabel!
    
    var flag:Bool = true
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! Pizza
        
        if(c.tamaño == nil || c.masa == nil || c.queso == nil || c.ingredientes == nil){
            flag = false
        }
        else{
            flag = true
        }
        
        sizeLabel.setText(c.tamaño)
        massLabel.setText(c.masa)
        cheeseLabel.setText(c.queso)
        
        var str:String? = nil
        for element in c.ingredientes!{
            
            if((str) != nil){
                str = str! + ", " + element
            }
            else
            {
                str = element
            }
            
        }
        ingredLabel.setText(str!)
        
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func confirm() {
        if(flag){
        let value = true
        pushControllerWithName("Confirm", context: value)
        }
    }
}
