//
//  TaskView.swift
//  ToDoSwiftUi
//
//  Created by Igor S. Menezes on 10/02/23.
//

import SwiftUI


struct TasksView: View {
    @EnvironmentObject var realManager : RealManager

    var body: some View {
        VStack {
            Text("My Tasks")
                .font(.title3).bold()
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            List {
                ForEach(realManager.tasks, id: \.id) {
                    task in
                    if !task.isInvalidated {
                        TaskRow(task: task.title, completed: task.completed)
                            .onTapGesture {
                                realManager.updateTask(id: task.id, completed: !task.completed)
                            }
                            .swipeActions(edge: .trailing) {
                                Button(role: .destructive){
                                    realManager.deleteTask(id: task.id)
                                }label: {
                                    Label("Delete",
                                    systemImage: "trash")
                                }
                            }
                    }
                    
                }
                .listRowSeparator(.hidden)
            }
            .onAppear {
                UITableView.appearance().backgroundColor = UIColor.clear
                UITableViewCell.appearance().backgroundColor = UIColor.clear
            }
        
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hue: 0.086, saturation: 0.141, brightness: 0.972))
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TasksView()
            .environmentObject(RealManager())
    }
}

