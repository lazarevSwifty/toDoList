//
//  StorageManager.swift
//  todoList
//
//  Created by Владислав Лазарев on 14/09/2019.
//  Copyright © 2019 Владислав Лазарев. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    static func saveTasksList(_ tasksLists: [Task]) {
        try! realm.write {
            realm.add(tasksLists)
        }
    }
}
