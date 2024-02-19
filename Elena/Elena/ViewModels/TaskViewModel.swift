//
//  Tasks_viewModel.swift
//  MC3_NEXT
//
//  Created by Daniele Perrupane on 19/02/24.
//

import Foundation

@Observable
class TaskViewModel {
    
    var tasks = [
        
        Task(title: "Selfcare", subtask: [SubTask(text: "description1", isCompleted: false)], isCompleted: false),
        Task(title: "Selfcare", subtask: [SubTask(text: "description2", isCompleted: false)], isCompleted: false),
        Task(title: "Selfcare", subtask: [SubTask(text: "description3", isCompleted: false)], isCompleted: false),
        Task(title: "Selfcare", subtask: [SubTask(text: "description4", isCompleted: false)], isCompleted: false),
        Task(title: "Selfcare", subtask: [SubTask(text: "description5", isCompleted: false)], isCompleted: false)
        
        ]
    
}

@Observable
class SubtaskViewModel{
    var subtask = [
    
        SubTask(text: "description1", isCompleted: false),
        SubTask(text: "description2", isCompleted: false),
        SubTask(text: "description3", isCompleted: false),
        SubTask(text: "description4", isCompleted: false),
        SubTask(text: "description5", isCompleted: false)
    
    ]
}
