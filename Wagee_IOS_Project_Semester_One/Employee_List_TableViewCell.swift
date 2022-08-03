//
//  Employee_List_TableViewCell.swift
//  Wagee_IOS_Project_Semester_One
//
//  Created by Nish Varia on 2022-04-11.
//

import UIKit

class Employee_List_TableViewCell: UITableViewCell {

    @IBOutlet weak var employeeName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
