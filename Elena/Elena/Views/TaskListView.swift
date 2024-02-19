//
//  TaskRowView.swift
//  MC3_NEXT
//
//  Created by Daniele Perrupane on 19/02/24.
//

import SwiftUI

struct TaskListView: View {
    var viewModel: TaskViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.tasks) { task in
                TaskRowView(task: task)
            }
        }
        .navigationTitle("Daily Tasks")
        .background(Color.blue)
    }
}


struct TaskRowView: View {
    
    @State var task: Task
    
    var body: some View {
        HStack{
            Text("\(task.text)")
                .accessibilityLabel("\(task.title)")
            Spacer()
            Image(systemName: task.isCompleted ? "checkmark.circle" : "circle")
                .resizable()
                .frame(width: 30.0,height: 30.0)
                .onTapGesture {
                    task.isCompleted.toggle()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView(viewModel: TaskViewModel())
    }
}
