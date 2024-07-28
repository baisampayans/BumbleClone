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
    let email: String
    let phone: String
    let username: String
    let password: String
    let image: String
    let height: Double
    let weight: Double
    
    var work = "Worker at some job"
    var education = "Graduate degree"
    var aboutMe = "This is a sentence about me that will look good on my profile"
    
    var basics : [UserInterest] {
        [
            UserInterest(iconName: "ruler", emoji: nil, text: "\(height)"),
            UserInterest(iconName: "graduationcap", emoji: nil, text: education),
            UserInterest(iconName: "wineglass", emoji: nil, text: "Socially"),
            UserInterest(iconName: "moon.stars.fill", emoji: nil, text: "Virgo")
        ]
    }
    
    var interests : [UserInterest] {
        [
            UserInterest(iconName: nil, emoji: "👟", text: "Running"),
            UserInterest(iconName: nil, emoji: "🏋️‍♀️", text: "Gym"),
            UserInterest(iconName: nil, emoji: "🎧", text: "Music"),
            UserInterest(iconName: nil, emoji: "🥘", text: "Cooking")
        ]
    }
    
    static var mock: User {
        User(id: 444, firstName: "Baisam", lastName: "Saha", age: 38, email: "mail@mail.com", phone: "", username: "", password: "", image: Constants.randomImage, height: 180, weight: 200)
    }
}
