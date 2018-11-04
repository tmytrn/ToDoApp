//
//  AddTaskController.swift
//  ToDoApp
//
//  Created by Tommy Tran on 11/3/18.
//  Copyright © 2018 Tommy Tran. All rights reserved.
//

import UIKit

protocol AddTask{
    func addTask(name: String)
}

class AddTaskController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBOutlet weak var taskNameOutlet: UITextField!
    
    var delegate: AddTask?
    
    @IBAction func addAction(_ sender: Any) {
        if taskNameOutlet.text != "" {
            delegate?.addTask(name: taskNameOutlet.text!)
            navigationController?.popViewController(animated: true)
        }
        
    }
    
    @IBAction func deleteAction(_ sender: Any) {
        
    }
    
}
