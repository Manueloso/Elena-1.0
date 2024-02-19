//
//  ListView.swift
//  Elena
//
//  Created by Daniele Perrupane on 19/02/24.
//

import SwiftUI

struct ListView: View {
    let task: Task
    var subtask: SubTask
    //let viewModel: TaskViewModel
    var body: some View {
        List{
            Section(header: Text("\(task.title)")){
                NavigationLink(destination: SubTaskView(task: SubTask(text: "\(subtask.text)", isCompleted: false))) {
                    ForEach(task.subtask) { title in
                        Label("\(subtask.text)",systemImage: "")
                    }
                        
                }
            }
        }
    }
}

#Preview {
    ListView(task: Task(title: "Selfcare", subtask: [SubTask(text: "", isCompleted: false)], isCompleted: false), subtask: SubTask(text: "titolo subtask", isCompleted: false))
}
