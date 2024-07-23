//
//  User.swift
//  BumbleClone
//
//  Created by baisampayan saha on 7/21/24.
//

import Foundation


struct UserArray: Codable {
    let users: [User]
    let total: Int
    let skip: Int
    let limit: Int
}

struct User: Codable, Identifiable {
    let id: Int
    let firstName: String
    let lastName: String
    let age: Int
    let gender: String
    let email: String
    let phone: String
    let username: String
    let password: String
    let image: String
    let height: Double
    let weight: Double
}
