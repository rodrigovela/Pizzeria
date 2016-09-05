//
//  Pizza.swift
//  Pizzas
//
//  Created by Rodrigo Velazquez on 05/09/16.
//  Copyright © 2016 Rodrigo Velazquez. All rights reserved.
//

import WatchKit

class Pizza: NSObject {
    var tamaño: String?
    var masa: String?
    var queso: String?
    
    init(t:String) {
        self.tamaño = t
    }
    
    init(t:String, m: String) {
        self.tamaño = t
        self.masa = m
    }
    
    init(t:String, m: String, q: String) {
        self.tamaño = t
        self.masa = m
        self.queso = q
    }

}



