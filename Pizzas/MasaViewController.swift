//
//  MasaViewController.swift
//  Pizzas
//
//  Created by Rodrigo Velazquez on 19/08/16.
//  Copyright © 2016 Rodrigo Velazquez. All rights reserved.
//

import UIKit

class MasaViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var pickerViewMass: UIPickerView!
   
    @IBOutlet weak var sizeLabel: UILabel!
    
    let mass = ["Delgada","Crujiente","Gruesa"]
    
    var size:String = ""
    
    var selectedMass:String = "Delgada"
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! QuesoViewController
        sigVista.mass = selectedMass
        sigVista.size = size
        
    }
    
    override func viewWillAppear(animated: Bool) {
        sizeLabel.text = size
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.pickerViewMass.dataSource = self
        self.pickerViewMass.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return mass.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return mass[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0)
        {
            selectedMass = mass[0]
        }
        else if(row == 1)
        {
            selectedMass = mass[1]
        }
        else if(row == 2)
        {
            selectedMass = mass[2]
        }
        else
        {
            selectedMass = mass[0]
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
