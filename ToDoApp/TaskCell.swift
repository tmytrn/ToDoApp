//
//  TaskCell.swift
//  ToDoApp
//
//  Created by Tommy Tran on 11/3/18.
//  Copyright © 2018 Tommy Tran. All rights reserved.
//

import UIKit

protocol ChangeButton {
    func changeButton(checked: Bool, index: Int)
}
class TaskCell: UITableViewCell {
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    
    }
    @IBOutlet weak var checkBoxOutlet: UIButton!
    @IBOutlet weak var taskNameLabel: UILabel!
    
    @IBAction func checkBoxAction(_ sender: Any) {
        if tasks![indexP!].checked {
            delegate?.changeButton(checked: false, index: indexP!)
        }else{
            delegate?.changeButton(checked: true, index: indexP!)
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    var delegate: ChangeButton?
    var indexP: Int?
    var tasks: [Task]?

}
