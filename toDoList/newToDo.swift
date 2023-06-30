//
//  newToDo.swift
//  toDoList
//
//  Created by Scholar on 6/27/23.
//

import SwiftUI

struct newToDo: View {
    @Binding var toDoItems: [toDoItem]
    @State var title: String
    @State var isImportant: Bool
    @Binding var showNewTask : Bool
    
    
    
    var body: some View {
        ZStack{
            Color(red: 126/255, green: 154/255, blue: 132/255).ignoresSafeArea()
    
            VStack {
                
                Text("Task Title: ")
                    .font(.title)
                    .fontWeight(.semibold)
                
                
                TextField("Enter the task description here...", text: $title)
                    .padding(70)
                
                Toggle(isOn: $isImportant) {
                    Text("Is this important?")
                        .padding()
                }
                Button("Add To Do") {
                    self.addTask(title: self.title, isImportant: self.isImportant)
                    self.showNewTask = false
                  
                }
                
            }
        }
    }
    private func addTask(title: String, isImportant: Bool = false) {
        let task = toDoItem(title: title, isImportant: isImportant)
        toDoItems.append(task)
    }
}


struct newToDo_Previews: PreviewProvider {
    static var previews: some View {
        newToDo(toDoItems: .constant ([]), title: "", isImportant: false, showNewTask: .constant(true))
    }
}
