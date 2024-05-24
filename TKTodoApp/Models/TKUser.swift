//
//  TKUser.swift
//  TKTodoApp
//
//  Created by Krish Mittal on 24/05/24.
//

import Foundation

struct TKUser: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
