//
//  Employee_Time_Table_ViewController.swift
//  Wagee_IOS_Project_Semester_One
//
//  Created by Nish Varia on 2022-04-13.
//

import UIKit

class Employee_Time_Table_ViewController: UIViewController {

    
    @IBOutlet weak var amount: UILabel!
    
    let userDefault = UserDefaults(suiteName: "Wagee")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let name = userDefault!.value(forKey: "Employee") as? String
        
    
        if name == "A"{
            if let value = userDefault!.value(forKey: "Amount") as? String{
                amount.text = value
            }
        }else if name == "B"{
            if let value = userDefault!.value(forKey: "Amount1") as? String{
                amount.text = value
            }
        }else if name == "C"{
            if let value = userDefault!.value(forKey: "Amount2") as? String{
                amount.text = value
            }
        }else if name == "D"{
            if let value = userDefault!.value(forKey: "Amount3") as? String{
                amount.text = value
            }
        }else if name == "E"{
            if let value = userDefault!.value(forKey: "Amount4") as? String{
                amount.text = value
            }
        }else if name == "F"{
            if let value = userDefault!.value(forKey: "Amount5") as? String{
                amount.text = value
            }
        }
        
    }

}
