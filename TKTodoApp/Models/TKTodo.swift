//
//  TKTodo.swift
//  TKTodoApp
//
//  Created by Krish Mittal on 31/05/24.
//

import Foundation

struct TKToDoItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
}
