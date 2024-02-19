//
//  TasksListView.swift
//  Elena
//
//  Created by Daniele Perrupane on 19/02/24.
//

import SwiftUI

struct TasksView: View {
    var tasks: Task
    var body: some View {
        
        NavigationStack {
            
            ZStack{
                ListView(task: Task(title: "Selfcare", subtask: [SubTask(text: "", isCompleted: false)], isCompleted: false), subtask: SubTask(text: "description1", isCompleted: false))
            }
            .navigationTitle("Daily Tasks")
            
            .toolbar{
                Button(action: {
                    
                }) {
                    Image(systemName: "plus")
                }
            }
            
            
            
        }.padding()
    }
}




#Preview {
    TasksView(tasks: Task(title: "Ciao", subtask: [SubTask(text: "description1", isCompleted: false)], isCompleted: false))
}
