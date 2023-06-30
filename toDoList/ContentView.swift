//
//  ContentView.swift
//  toDoList
//
//  Created by Scholar on 6/27/23.
//

import SwiftUI

struct ContentView: View {
    @State var toDoItems: [toDoItem] = []
    @State private var showNewTask = false
    
    var body: some View {
        
        ZStack{
            
            Color(red: 126/255, green: 154/255, blue: 132/255).ignoresSafeArea()
            Image("pineTree")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(15)
            
            
            VStack {
                
                HStack {
                    Spacer()
                    Text("To Do List")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .padding()
                    Button(action: {
                        self.showNewTask = true
                    }) {
                        Text ("+")
                    }
                    Spacer()
                    
                }
                
                Spacer()
                List {
                    ForEach(toDoItems){ toDoItem in
                        if toDoItem.isImportant == true {
                            Text ("‼️" + toDoItem.title)
                        } else {
                            Text(toDoItem.title)
                        }
                    }
                }
        
            }
            if showNewTask {
                newToDo(toDoItems:$toDoItems, title: "", isImportant: false, showNewTask: $showNewTask)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
