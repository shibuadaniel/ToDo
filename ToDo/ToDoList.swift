//
//  ContentView.swift
//  ToDo
//
//  Created by SHIBU DANIEL on 10/12/20.
//

import SwiftUI

struct ToDoList: View {
    var body: some View {
        
        NavigationView {
        List {
            ForEach(
                [ToDoItem(title: "Title1", important: false), ToDoItem(title: "Title2", important: true)]){ todo in
                        Text(todo.title)
                    }
                }
        .navigationBarTitle("To Do List")
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoList()
    }
}
