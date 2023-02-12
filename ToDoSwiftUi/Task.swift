//
//  Task.swift
//  ToDoSwiftUi
//
//  Created by Igor S. Menezes on 12/02/23.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
}
