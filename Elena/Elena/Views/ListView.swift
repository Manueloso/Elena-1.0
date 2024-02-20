//
//  ListView.swift
//  Elena
//
//  Created by Daniele Perrupane on 19/02/24.
//

import SwiftUI


struct ListView: View {
    var task: Task
    var viewModel = TaskViewModel()
    var subtask: SubTask
    var body: some View {
        NavigationView {
            
            List{
                ForEach(0..<viewModel.tasks.count, id: \.self){ index in
                    Section(header: Text("\(viewModel.tasks[index].title)")){
                        NavigationLink(destination: SubTaskView(task: SubTask(text: "\(task.title)", isCompleted: false))) {
                            ForEach(task.subtask) { title in
                                Label("\(viewModel.tasks[index].subtask[index].text)",systemImage: "")
                            }
                            
                        }
                        
                    }
                }
            }
            .toolbar{
                Button(action: {
                    
                }) {
                    Image(systemName: "plus")
                }
            }
            .navigationTitle("Daily Tasks")
        }
    }
}


#Preview {
    ListView(task: Task(title: "selfcare", subtask: [SubTask(text: "", isCompleted: false)], isCompleted: false), subtask: SubTask(text: "titolo subtask", isCompleted: false))
}
