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
        ListView(task: Task(title: "", subtask: [SubTask(text: "", isCompleted: false)], isCompleted: false), subtask: SubTask(text: "", isCompleted: false))
        }
    }
}
