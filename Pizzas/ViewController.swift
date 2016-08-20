//
//  ViewController.swift
//  Pizzas
//
//  Created by Rodrigo Velazquez on 19/08/16.
//  Copyright © 2016 Rodrigo Velazquez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pickerView: UIPickerView!
    
    let size = ["Chica","Mediana","Grande"]
    var selectedSize:String = "Chica"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.pickerView.dataSource = self
        self.pickerView.delegate = self
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! MasaViewController
        sigVista.size = selectedSize
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return size.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return size[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0)
        {
            selectedSize = size[0]
        }
        else if(row == 1)
        {
            selectedSize = size[1]
        }
        else if(row == 2)
        {
            selectedSize = size[2]
        }
        else
        {
            selectedSize = size[0]
        }
    }

}

