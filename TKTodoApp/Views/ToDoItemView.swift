//
//  ToDoItemView.swift
//  TKTodoApp
//
//  Created by Krish Mittal on 31/05/24.
//

import SwiftUI

struct ToDoItemView: View {
    let item: TKToDoItem
    @StateObject private var viewModel = ToDoItemViewModel()
    
    var body: some View {
        HStack {
            
            Image(systemName: item.isDone ? "checkmark.square" : "square")
            
            Text(item.title)
                .font(.headline)
                .bold()
            
            Spacer()
            
            Text(viewModel.dueDateString(item: item))
                .font(.footnote)
        }
        .padding(.horizontal, 20)
    }
}
