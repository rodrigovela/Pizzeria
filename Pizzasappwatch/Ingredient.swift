//
//  Ingredient.swift
//  Pizzas
//
//  Created by Rodrigo Velazquez on 05/09/16.
//  Copyright © 2016 Rodrigo Velazquez. All rights reserved.
//

import WatchKit
import Foundation


class Ingredient: WKInterfaceController {
    
    var ingredientes:[String]? = []
    var tamaño:String? = nil
    var masa:String? = nil
    var queso:String? = nil

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        let c = context as! Pizza
        tamaño = c.tamaño
        masa = c.masa
        queso = c.queso
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
        if(ingredientes?.count > 0){
            
            let pizza = Pizza(t: tamaño!, m: masa!, q: queso!, i: ingredientes!)
            pushControllerWithName("Order", context: pizza)
            
        }
        
    }
    
    @IBAction func jamonSelection(value: Bool) {
        if(ingredientes?.count < 5)
        {
            if(value){
                ingredientes?.append("jamón")
            }
            else{
                ingredientes?.removeAtIndex((ingredientes?.indexOf("jamón")!)!)
            }
        }
    }
    
    @IBAction func peperonniSelection(value: Bool) {
        if(ingredientes?.count < 5)
        {
            if(value){
                ingredientes?.append("peperonni")
            }
            else{
                ingredientes?.removeAtIndex((ingredientes?.indexOf("peperonni")!)!)
            }
        }
    }
    
    @IBAction func pavoSelection(value: Bool) {
        if(ingredientes?.count < 5)
        {
            if(value){
                ingredientes?.append("pavo")
            }
            else{
                ingredientes?.removeAtIndex((ingredientes?.indexOf("pavo")!)!)
            }
        }
    }
    
    @IBAction func salchichaSelection(value: Bool) {
        if(ingredientes?.count < 5)
        {
            if(value){
                ingredientes?.append("salchicha")
            }
            else{
                ingredientes?.removeAtIndex((ingredientes?.indexOf("salchicha")!)!)
            }
        }
    }
    
    @IBAction func cebollaSelection(value: Bool) {
        if(ingredientes?.count < 5)
        {
            if(value){
                ingredientes?.append("cebolla")
            }
            else{
                ingredientes?.removeAtIndex((ingredientes?.indexOf("cebolla")!)!)
            }
        }    }
    
    @IBAction func piñaSelection(value: Bool) {
        if(ingredientes?.count < 5)
        {
            if(value){
                ingredientes?.append("piña")
            }
            else{
                ingredientes?.removeAtIndex((ingredientes?.indexOf("piña")!)!)
            }
        }
    }
    
    @IBAction func pimientoSelection(value: Bool) {
        if(ingredientes?.count < 5)
        {
            if(value){
                ingredientes?.append("pimiento")
            }
            else{
                ingredientes?.removeAtIndex((ingredientes?.indexOf("pimiento")!)!)
            }
        }
    }
    
}
