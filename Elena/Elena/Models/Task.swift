//
//  Task.swift
//  MC3_NEXT
//
//  Created by Daniele Perrupane on 19/02/24.
//

import Foundation

struct Task: Identifiable {
    
    var id: UUID = UUID()
    var title: String = "Daily Tasks"
    var text: String = "No description"
    var isCompleted: Bool = false
    
}



