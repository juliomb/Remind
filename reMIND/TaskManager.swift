//
//  TaskManager.swift
//  reMIND
//
//  Created by Timple Soft on 24/11/16.
//  Copyright © 2016 TimpleSoft. All rights reserved.
//

import Foundation

class TaskManager {

    static let sharedInstance = TaskManager()
    
    var tasks : [[String: String]] = [[String: String]]()
    
    func save() {
        UserDefaults.standard.set(tasks, forKey: "tasks")
    }
    
    func load() {
        if let array = UserDefaults.standard.array(forKey: "tasks") as? [[String : String]] {
            tasks = array;
        }
    }
    
}
