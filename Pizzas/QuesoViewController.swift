//
//  QuesoViewController.swift
//  Pizzas
//
//  Created by Rodrigo Velazquez on 19/08/16.
//  Copyright © 2016 Rodrigo Velazquez. All rights reserved.
//

import UIKit

class QuesoViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var pickerViewCheese: UIPickerView!
    @IBOutlet weak var massLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    var size:String = ""
    var mass:String  = ""
    var selectedCheese:String = "mozarella"
    
    var cheese = ["mozarella", "cheddar", "parmesano", "sin queso"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.pickerViewCheese.dataSource = self
        self.pickerViewCheese.delegate = self
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigView = segue.destinationViewController as! IngredientesViewController
        sigView.size = size
        sigView.mass = mass
        sigView.cheese = selectedCheese
    }

    override func viewWillAppear(animated: Bool) {
        sizeLabel.text = size
        massLabel.text = mass
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cheese.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cheese[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0)
        {
            selectedCheese = cheese[0]
        }
        else if(row == 1)
        {
            selectedCheese = cheese[1]
        }
        else if(row == 2)
        {
            selectedCheese = cheese[2]
        }
        else if(row == 3)
        {
            selectedCheese = cheese[3]
        }
        else
        {
            selectedCheese = cheese[0]
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
