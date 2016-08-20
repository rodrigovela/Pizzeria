//
//  IngredientesViewController.swift
//  Pizzas
//
//  Created by Rodrigo Velazquez on 19/08/16.
//  Copyright © 2016 Rodrigo Velazquez. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var cheeseLabel: UILabel!
    @IBOutlet weak var massLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var pickerViewIngredients: UIPickerView!
    var size:String = ""
    var mass:String = ""
    var cheese:String = ""
    var selectedIng:String = "jamón"
    var selectedIngredient:[String] = []
    var numberIng:Int = 5
    let ingredients = ["jamón", "pepperoni", "pavo", "salchicha", "aceituna", "cebolla", "pimiento", "piña", "anchoa"]

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigView = segue.destinationViewController as! ConfirmacionViewController
        sigView.size = size
        sigView.mass = mass
        sigView.cheese = cheese
        sigView.ingredientes = selectedIngredient
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.pickerViewIngredients.dataSource = self
        self.pickerViewIngredients.delegate = self
    }
    
    override func viewWillAppear(animated: Bool) {
        sizeLabel.text = size
        massLabel.text = mass
        cheeseLabel.text = cheese
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ingredients.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ingredients[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0)
        {
            selectedIng = ingredients[0]
        }
        else if(row == 1)
        {
            selectedIng = ingredients[1]
        }
        else if(row == 2)
        {
            selectedIng = ingredients[2]
        }
        else if(row == 3)
        {
            selectedIng = ingredients[3]
        }
        else if(row == 4)
        {
            selectedIng = ingredients[4]
        }
        else if(row == 5)
        {
            selectedIng = ingredients[5]
        }
        else if(row == 6)
        {
            selectedIng = ingredients[6]
        }
        else if(row == 7)
        {
            selectedIng = ingredients[7]
        }
        else
        {
            selectedIng = ingredients[0]
        }
    }
    
    func verify() -> Bool {
        var flag = false
        for ingredient in selectedIngredient {
            if(ingredient == selectedIng){
                flag = true
                break
            }
        }
        return flag
    }

    @IBAction func addIngredient(sender: AnyObject) {
        if verify(){
            
            message.text = "Ingrediente Repetido"
            
        }
        else{
            if (numberIng>0){
                selectedIngredient.append(selectedIng)
                numberIng -= 1
                message.text = "Ingrediente restantes: \(numberIng)"
            }
            else{
                message.text = "Accion no permitida"
            }
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
