//
//  ElenaApp.swift
//  Elena
//
//  Created by Alekseenko Artem   on 19/02/24.
//

import SwiftUI

@main
struct ElenaApp: App {
    var body: some Scene {
        WindowGroup {
            TasksView(tasks: Task(title: "", subtask: [SubTask(text: "description1", isCompleted: false)], isCompleted: false))
        }
    }
}
