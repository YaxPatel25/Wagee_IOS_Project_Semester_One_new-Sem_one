//
//  Employee_List_TableViewController.swift
//  Wagee_IOS_Project_Semester_One
//
//  Created by Nish Varia on 2022-04-11.
//

import UIKit

class Employee_List_TableViewController: UITableViewController {

    @IBOutlet var shapeTableView: UITableView!
    
    var name = [EmployeeButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initList()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    func initList(){
        let A = EmployeeButton(id:"A")
        name.append(A)
        
        let B = EmployeeButton(id:"B")
        name.append(B)
        
        let C = EmployeeButton(id:"C")
        name.append(C)
        
        let D = EmployeeButton(id:"D")
        name.append(D)
        
        let E = EmployeeButton(id:"E")
        name.append(E)
        
        let F = EmployeeButton(id:"F")
        name.append(F)
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 6
        
    }

     
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Employee_List_TableCell", for: indexPath) as! Employee_List_TableViewCell

        let thisName = name[indexPath.row]
        // cell.employeeName.setTitle(thisName.id, for: .normal)
        cell.employeeName.text = thisName.id

        
    
//        cell.employeeName.setTitle(name[indexPath.row], for: .normal)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "paymentSegue", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "paymentSegue"){
            let indexPath = self.tableView.indexPathForSelectedRow!
            
            let payment_TableView = segue.destination as? Payment_TableView
            
            let selectedName = name[indexPath.row]
            
            payment_TableView!.name = selectedName
            
            self.tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
