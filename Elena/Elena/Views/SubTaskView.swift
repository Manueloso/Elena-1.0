//
//  DestinationView.swift
//  Elena
//
//  Created by Daniele Perrupane on 19/02/24.
//

import SwiftUI

struct SubTaskView: View {
    
    @State var task: SubTask
    var viewModel = TaskViewModel()
    
    
    var body: some View {
        
        List{
            ForEach(viewModel.tasks) { task in
                Section(){
                    ForEach(task.subtask){ subtask in
                        HStack{
                            Text("\(subtask.text)")
                            Spacer()
                            Image(systemName: task.isCompleted ? "checkmark.circle" : "circle")
                                .resizable()
                                .frame(width: 30.0,height: 30.0)
                                .onTapGesture {
                                    task.isCompleted.toggle()
                                }
                        }
                    }
                    
                }.navigationTitle("\(viewModel.tasks[0].title)")
            }
        }
        
        
    }
}

#Preview {
    SubTaskView(task: SubTask(text: "description 1", isCompleted: false))
}
