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
    var viewSubModel = SubtaskViewModel()
    @State var subtask: SubTask
    @State private var isOpen = false
    
    var body: some View {
        NavigationView {
            
            List{
                ForEach(viewModel.tasks) { task in
                    Section() {
                        DisclosureGroup("\(task.title)") {
                            ForEach(task.subtask) { subtask in
                                HStack {
                                    Text("\(subtask.text)")
                                    
                                    Spacer()
                                    Image(systemName: subtask.isCompleted ? "checkmark.circle" : "circle")
                                        .resizable()
                                        .frame(width: 30.0,height: 30.0)
                                }.onTapGesture {
                                    //AGGIUNGERE IL TAP DELLA CHECKBOX
                                }
                                
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
