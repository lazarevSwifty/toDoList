//
//  Extension + UIAlertController.swift
//  todoList
//
//  Created by Владислав Лазарев on 14/09/2019.
//  Copyright © 2019 Владислав Лазарев. All rights reserved.
//

import UIKit

extension MainTableViewController {
    
    func showAlert(){
        let alert = UIAlertController(title: "New Task", message: "Enter the new task", preferredStyle: .alert)
        var nameTextField: UITextField!
        var noteTextField: UITextField!
        
        let saveAction = UIAlertAction(title: "Add", style: .default) { _ in
            guard let nameTask = nameTextField.text, !nameTask.isEmpty else { return }
            if let noteTask = noteTextField.text, !noteTask.isEmpty {
                let newTask = Task(value: [nameTask, noteTask, Date(), false])
                StorageManager.saveTasksList([newTask])
            } else {
                let newTask = Task(value: [nameTask, "", Date(), false])
                StorageManager.saveTasksList([newTask])
            }
            
            self.tableView.insertRows(at: [IndexPath(row: self.tasksLists.count - 1, section: 0)], with: .automatic)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive)
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        alert.addTextField { textField in
            nameTextField = textField
            nameTextField.placeholder = "list name"
        }
        
        alert.addTextField { textField in
            noteTextField = textField
            noteTextField.placeholder = "description"
        }
        
        present(alert, animated: true)
    }
    
    
}
