//
//  CustomiseViewController.swift
//  SandWhich
//
//  Created by DPI Student 22 on 7/12/22.
//

import UIKit

class CustomiseViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var fillingPicker: UIPickerView!
    @IBOutlet weak var amountValueLabel: UILabel!
    @IBOutlet weak var amountValueStepper: UIStepper!
    
//    var meat = 1
//    var cheese = 1
//    var lettuce = 1
//    var tomato = 1
//    var condiment = 1
    
    var ingredients = [Ingredient]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var ingredient1 = Ingredient(name: "meat", amount: 1)
        var ingredient2 = Ingredient(name: "cheese", amount: 1)
        var ingredient3 = Ingredient(name: "lettuce", amount: 1)
        var ingredient4 = Ingredient(name: "tomato", amount: 1)
        var ingredient5 = Ingredient(name: "condiment", amount: 1)
        
        ingredients = [ingredient1, ingredient2, ingredient3, ingredient4, ingredient5]
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        ingredients.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        ingredients[row].name
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let currentValue = ingredients[row].amount
        amountValueLabel.text = currentValue.description
        amountValueStepper.value = Double(currentValue)
    }
    

    @IBAction func valueChangedStepper() {
        var selectedIngredient = ingredients[fillingPicker.selectedRow(inComponent: 0)]
        selectedIngredient.amount = Int(amountValueStepper.value)
        amountValueLabel.text = selectedIngredient.amount.description
        print("Stepper Interaction - Activated")
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        print("Destination: \(segue.destination)")
        let randomSandwhichVC = segue.destination as! RandomSandwichViewController
        randomSandwhichVC.ingredients = self.ingredients
    }
    

}
