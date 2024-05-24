//
//  ContentView.swift
//  TKTodoApp
//
//  Created by Krish Mittal on 20/05/24.
//

import SwiftUI

struct MainView: View {
    
    @StateObject private var viewModel = MainViewModel()
    
    var body: some View {
        if viewModel.isSignIn, !viewModel.currentUserId.isEmpty {
            ProfileView()
        } else {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
