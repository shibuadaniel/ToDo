//
//  ToDoItem.swift
//  ToDo
//
//  Created by SHIBU DANIEL on 10/12/20.
//

import Foundation

struct ToDoItem: Identifiable {
    var id = UUID()
    var title: String
    var important: Bool
    
    init(title: String, important: Bool){
        self.title = title
        self.important = important
    }
}
