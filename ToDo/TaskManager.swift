//
//  TaskManager.swift
//  ToDo
//
//  Created by John Dickinson on 1/16/15.
//  Copyright (c) 2015 umsi363w15. All rights reserved.
//

import UIKit

var taskMgr = TaskManager()

struct task {
    var name = "Add Task Name"
    var desc = "Add Task Description"
}


class TaskManager: NSObject {

    var tasks = [task]()
    
    func addTask (name: String, desc: String) {
        tasks.append(task(name: name, desc: desc))
    }
    
}
