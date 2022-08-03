//
//  Payment_TableView.swift
//  Wagee_IOS_Project_Semester_One
//
//  Created by Nish Varia on 2022-04-12.
//

import Foundation
import UIKit

class Payment_TableView: UIViewController,UITextFieldDelegate{
    
    @IBOutlet weak var pEmployeeName: UITextField!
    @IBOutlet weak var amount: UITextField!
    
    
    let userDefault = UserDefaults(suiteName: "Wagee")
    
    var name : EmployeeButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pEmployeeName.text = name.id
        amount.delegate = self

        if name.id == "A"{
            userDefault!.setValue(name.id, forKey: "Employee")
            if let value = userDefault!.value(forKey: "Amount") as? String{
                amount.text = value
            }
        }else if name.id == "B"{
            userDefault!.setValue(name.id, forKey: "Employee")
            if let value = userDefault!.value(forKey: "Amount1") as? String{
                amount.text = value
            }
        }else if name.id == "C"{
            userDefault!.setValue(name.id, forKey: "Employee")
            if let value = userDefault!.value(forKey: "Amount2") as? String{
                amount.text = value
            }
        }else if name.id == "D"{
            userDefault!.setValue(name.id, forKey: "Employee")
            if let value = userDefault!.value(forKey: "Amount3") as? String{
                amount.text = value
            }
        }else if name.id == "E"{
            userDefault!.setValue(name.id, forKey: "Employee")
            if let value = userDefault!.value(forKey: "Amount4") as? String{
                amount.text = value
            }
        }else if name.id == "F"{
            userDefault!.setValue(name.id, forKey: "Employee")
            if let value = userDefault!.value(forKey: "Amount5") as? String{
                amount.text = value
            }
        }
        
//        amount.text = userDefault.value(forKey: "Amount") as! String
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // do stuff
        
        if name.id == "A"{
            userDefault!.setValue(amount.text, forKey: "Amount")
            amount.resignFirstResponder()
        }else if name.id == "B"{
            userDefault!.setValue(amount.text, forKey: "Amount1")
            amount.resignFirstResponder()
        }else if name.id == "C"{
            userDefault!.setValue(amount.text, forKey: "Amount2")
            amount.resignFirstResponder()
        }else if name.id == "D"{
            userDefault!.setValue(amount.text, forKey: "Amount3")
            amount.resignFirstResponder()
        }else if name.id == "E"{
            userDefault!.setValue(amount.text, forKey: "Amount4")
            amount.resignFirstResponder()
        }else if name.id == "F"{
            userDefault!.setValue(amount.text, forKey: "Amount5")
            amount.resignFirstResponder()
        }
        
        return true
    }
}
