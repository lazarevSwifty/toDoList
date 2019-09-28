//
//  Task.swift
//  todoList
//
//  Created by Владислав Лазарев on 14/09/2019.
//  Copyright © 2019 Владислав Лазарев. All rights reserved.
//

import RealmSwift

class Task: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var note = ""
    @objc dynamic var date = Date()
    @objc dynamic var isComplete = false
}
