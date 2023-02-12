//
//  TaskView.swift
//  ToDoSwiftUi
//
//  Created by Igor S. Menezes on 10/02/23.
//

import SwiftUI

struct TasksView: View {
    var body: some View {
        VStack {
            Text("My Tasks")
                .font(.title3)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hue: 0.086, saturation: 0.141, brightness: 0.972))
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TasksView()
    }
}
