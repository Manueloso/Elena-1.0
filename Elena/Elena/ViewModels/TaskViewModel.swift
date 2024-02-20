//
//  Tasks_viewModel.swift
//  MC3_NEXT
//
//  Created by Daniele Perrupane on 19/02/24.
//

import Foundation
import Observation

@Observable
class TaskViewModel {
    
    var tasks = [
        
        Task(title: "Selfcare1", subtask: [SubTask(text: "description1", isCompleted: false),SubTask(text: "de", isCompleted: false), SubTask(text: "description3", isCompleted: false),SubTask(text: "description4", isCompleted: false),SubTask(text: "description5", isCompleted: false)], isCompleted: false),
        Task(title: "Selfcare2", subtask: [SubTask(text: "description1", isCompleted: false),SubTask(text: "description2", isCompleted: false), SubTask(text: "description3", isCompleted: false),SubTask(text: "description4", isCompleted: false),SubTask(text: "description5", isCompleted: false)], isCompleted: false),
        Task(title: "Selfcare3", subtask: [SubTask(text: "description1", isCompleted: false),SubTask(text: "description2", isCompleted: false), SubTask(text: "description3", isCompleted: false),SubTask(text: "description4", isCompleted: false),SubTask(text: "description5", isCompleted: false)], isCompleted: false),
        Task(title: "Selfcare4", subtask: [SubTask(text: "description1", isCompleted: false),SubTask(text: "description2", isCompleted: false), SubTask(text: "description3", isCompleted: false),SubTask(text: "description4", isCompleted: false),SubTask(text: "description5", isCompleted: false)], isCompleted: false),
        Task(title: "Selfcare5", subtask: [SubTask(text: "description1", isCompleted: false),SubTask(text: "description2", isCompleted: false), SubTask(text: "description3", isCompleted: false),SubTask(text: "description4", isCompleted: false),SubTask(text: "description5", isCompleted: false)], isCompleted: false),
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
