//
//  ViewController.swift
//  Flagler Student
//  This app welcomes students by their names.
//  Created by Jeremy Wang on 1/24/23.
//

import UIKit  //similar to using in C#

class ViewController: UIViewController {
  //Use outlets for the input/output controls
  //We usually put these before the viewDidLoad()
    @IBOutlet weak var ResultMessage: UILabel!
    
    @IBOutlet weak var FirstName: UITextField!
    
    @IBOutlet weak var LastName: UITextField!
    
    
    @IBOutlet weak var Tuition: UITextField!
    
    
    @IBOutlet weak var Scholarship: UITextField!
    
    
    @IBOutlet weak var Balance: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Put the methods/action after viewDidLoad()


    @IBAction func Submit(_ sender: UIButton) {
                
        let firstName = FirstName.text!
        let lastName = LastName.text!
        let tuition = Double(Tuition.text!)
        let scholarship = Double(Scholarship.text!)        
        
        ResultMessage.text = "Welcome, \(String(firstName)) \(String(lastName))!"
        
        let balance = tuition! - scholarship!
        
        Balance.text  = balance.formatted(.currency(code: "USD"))
                        
    }
}

