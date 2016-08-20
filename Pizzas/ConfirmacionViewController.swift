//
//  ConfirmacionViewController.swift
//  Pizzas
//
//  Created by Rodrigo Velazquez on 19/08/16.
//  Copyright © 2016 Rodrigo Velazquez. All rights reserved.
//

import UIKit

class ConfirmacionViewController: UIViewController {
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var massLabel: UILabel!
    @IBOutlet weak var cheeseLabel: UILabel!
    @IBOutlet weak var ingLabel: UILabel!
    @IBOutlet weak var message: UILabel!

    var size:String = ""
    var mass:String = ""
    var cheese:String = ""
    var ingredientes:[String]=[]
    
    override func viewWillAppear(animated: Bool) {
        var ing:String = ""
        sizeLabel.text = size
        massLabel.text = mass
        cheeseLabel.text = cheese
        if !ingredientes.isEmpty {
            for item in ingredientes{
                ing = ing + "\(item) \n"
            }
            ingLabel.text = ing
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func confirm(sender: AnyObject) {
        
        if(size.isEmpty || mass.isEmpty || cheese.isEmpty || ingredientes.isEmpty){
            message.text = "Orden Incompleta"
        }
        else{
            message.text = "Orden Completa"
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
