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
        Task(title: "Task1", text: "Description1"),
        Task(title: "Task2", text: "Description2"),
        Task(title: "Task3", text: "Description3")
    ]
    
}
