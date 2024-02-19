//
//  DestinationView.swift
//  Elena
//
//  Created by Daniele Perrupane on 19/02/24.
//

import SwiftUI

struct SubTaskView: View {
    
    @State var task: SubTask
    
    var body: some View {
        
        HStack{
            Text("\(task.text)")
               
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

#Preview {
    SubTaskView(task: SubTask(text: "description 1", isCompleted: false))
}
