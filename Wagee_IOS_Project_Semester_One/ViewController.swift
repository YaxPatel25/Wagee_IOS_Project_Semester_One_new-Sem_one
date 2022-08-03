//
//  ViewController.swift
//  Wagee_IOS_Project_Semester_One
//
//  Created by Nish Varia on 2022-04-11.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    let userDefault = UserDefaults(suiteName: "Wagee")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameField.delegate = self
        passwordField.delegate = self
        // Do any additional setup after loading the view.
    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//
//        if segue.identifier == "employerLogin"{
//            let controller = segue.destination as! ViewController
//            employerButton(controller)
//        }
//
//    }
    
    @IBAction func employerButton(_ sender: Any) {
        if(userNameField.text!.isEqual("Employer") && passwordField.text!.isEqual("1") ){
          
        }
    }
    
    
    @IBAction func employeeButton(_ sender: Any) {
        if(userNameField.text!.isEqual("A") && passwordField.text!.isEqual("1") ){
            userDefault!.setValue(userNameField.text!, forKey: "Employee")
        }else if(userNameField.text!.isEqual("B") && passwordField.text!.isEqual("1") ){
            userDefault!.setValue(userNameField.text!, forKey: "Employee")
        }else if(userNameField.text!.isEqual("C") && passwordField.text!.isEqual("1") ){
            userDefault!.setValue(userNameField.text!, forKey: "Employee")
        }else if(userNameField.text!.isEqual("D") && passwordField.text!.isEqual("1") ){
            userDefault!.setValue(userNameField.text!, forKey: "Employee")
        }else if(userNameField.text!.isEqual("E") && passwordField.text!.isEqual("1") ){
            userDefault!.setValue(userNameField.text!, forKey: "Employee")
        }else if(userNameField.text!.isEqual("F") && passwordField.text!.isEqual("1") ){
            userDefault!.setValue(userNameField.text!, forKey: "Employee")
        }
//        else{
//           showToast(message: "Invalid Credentials")
//        }
    }
}
    
//    extension UIViewController {
//
//    func showToast(message : String) {
//
//        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 75, y: self.view.frame.size.height-100, width: 150, height: 35))
//        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
//        toastLabel.textColor = UIColor.white
//        toastLabel.textAlignment = .center;
//        toastLabel.text = message
//        toastLabel.alpha = 1.0
//        toastLabel.layer.cornerRadius = 10;
//        toastLabel.clipsToBounds  =  true
//        self.view.addSubview(toastLabel)
//        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
//             toastLabel.alpha = 0.0
//        }, completion: {(isCompleted) in
//            toastLabel.removeFromSuperview()
//        })
//    } }
//


