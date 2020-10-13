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
                    [ToDoItem(title: "Clean the front room", important: false), ToDoItem(title: "Buy milk from shoprite", important: true), ToDoItem(title: "Buy dishwashing liquid", important: false)]){ todo in
                    if todo.important {
                        Text(todo.title)
                            .bold()
                            .foregroundColor(.white)
                            .padding(2)
                            .background(Rectangle())
                            .foregroundColor(.blue)
                            .cornerRadius(4)
                    } else {
                        Text(todo.title)
                    }
                }
            }
            .navigationBarTitle("To Do List")
            .navigationBarItems(trailing: NavigationLink(destination: ToDoList(),
                                                         label: { Text("Add")
                                                         }))
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoList()
            
    }
}
