//
//  CreateToDO.swift
//  ToDo
//
//  Created by SHIBU DANIEL on 10/13/20.
//

import SwiftUI

struct CreateToDo: View {
    
    @State var toDoTitle = ""
    @State var important = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
                List {
                    TextField("Enter To Do", text:$toDoTitle)
                    Toggle(isOn: $important) {
                        Text("Important")
                    }
                    HStack {
                        Button("Save") {
                            self.presentationMode.wrappedValue.dismiss()
                        }.disabled(toDoTitle.isEmpty)
                    }
                }.listStyle(GroupedListStyle())
            }
        }


struct CreateToDO_Previews: PreviewProvider {
    static var previews: some View {
        CreateToDo()
    }
}
