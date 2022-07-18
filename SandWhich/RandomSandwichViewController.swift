//
//  RandomSandwichViewController.swift
//  SandWhich
//
//  Created by DPI Student 22 on 7/12/22.
//

import UIKit

class RandomSandwichViewController: UIViewController {
    
    @IBOutlet weak var meatLabel: UILabel!
    @IBOutlet weak var cheeseLabel: UILabel!
    @IBOutlet weak var lettuceLabel: UILabel!
    @IBOutlet weak var condimentLabel: UILabel!
    

    @IBOutlet weak var breadImageView: UIImageView!
    @IBOutlet weak var breadImageView2: UIImageView!
    @IBOutlet weak var meatImageView: UIImageView!
    @IBOutlet weak var cheeseImageView: UIImageView!
    @IBOutlet weak var lettuceImageView: UIImageView!
    @IBOutlet weak var condimentImageView: UIImageView!
    
    @IBOutlet weak var refreshButton: UIButton!
    
    var ingredients = [Ingredient]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        meatLabel.text = ingredients[0].amount.description
        cheeseLabel.text = ingredients[1].amount.description
        lettuceLabel.text = ingredients[2].amount.description
        condimentLabel.text = ingredients[4].amount.description
        
        randomize()
    }
    
    @IBAction func onPressedRefreshButton() {
        randomize()
    }
    
    func randomize() {
        var bread = Int.random(in: 0...2)
        if bread == 0 {
            breadImageView.image = UIImage(named: "wheat bread")
            breadImageView2.image = UIImage(named: "wheat bread bottom")
            print("wheat bread")
        }
        else if bread == 1 {
            breadImageView.image = UIImage(named: "white bread")
            breadImageView2.image = UIImage(named: "white bread bottom")
            print("white bread")
        }
        else {
            breadImageView.image = UIImage(named: "raisin bread")
            breadImageView2.image = UIImage(named: "raisin bread bottom")
            print("raisin bread")
        }
        
        var meat = Int.random(in: 0...2)
        if meat == 0 {
            meatImageView.image = UIImage(named: "ham meat")
            print("ham meat")
        }
        else if meat == 1 {
            meatImageView.image = UIImage(named: "turkey meat")
            print("turkey meat")
        }
        else {
            meatImageView.image = UIImage(named: "salami meat")
            print("salami meat")
        }
        
        var cheese = Int.random(in: 0...3)
        if cheese == 0 {
            cheeseImageView.image = UIImage(named: "cheddar cheese")
            print("cheddar cheese")
        }
        else if cheese == 1 {
            cheeseImageView.image = UIImage(named: "pepper jack cheese")
            print("pepper jack cheese")
        }
        else if cheese == 2 {
            cheeseImageView.image = UIImage(named: "swiss cheese")
            print("swiss cheese")
        }
        else {
            cheeseImageView.image = UIImage(named: "provolone cheese")
            print("provolone cheese")
        }
        
        var lettuce = Int.random(in: 0...3)
        if lettuce == 0 {
            lettuceImageView.image = UIImage(named: "green lettuce")
            print("green lettuce")
        }
        else if lettuce == 1 {
            lettuceImageView.image = UIImage(named: "blue lettuce")
            print("blue lettuce")
        }
        else if lettuce == 2 {
            lettuceImageView.image = UIImage(named: "purple lettuce")
            print("purple lettuce")
        }
        else {
            lettuceImageView.image = UIImage(named: "red lettuce")
            print("red lettuce")
        }
        
        var condiment = Int.random(in: 0...2)
        if condiment == 0 {
            condimentImageView.image = UIImage(named: "mayo condiment")
            print("mayo condiment")
        }
        else if condiment == 1 {
            condimentImageView.image = UIImage(named: "mustard condiment")
            print("mustard condiment")
        }
        else {
            condimentImageView.image = UIImage(named: "bbq condiment")
            print("bbq condiment")
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
