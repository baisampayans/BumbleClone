//
//  DatabaseHelper.swift
//  BumbleClone
//
//  Created by baisampayan saha on 7/21/24.
//

import Foundation


struct DatabaseHelper {
    func getProducts() async throws -> [Product] {
        
        guard let url = URL(string: "https://dummyjson.com/products") else {
            throw URLError(.badURL)}
        
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }
        let products = try JSONDecoder().decode(ProductArray.self, from: data)
        return products.products
    }
    
    
    func getUsers() async throws -> [User] {
        
        guard let url = URL(string: "https://dummyjson.com/users") else {
            throw URLError(.badURL)}
        
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }
        let users = try JSONDecoder().decode(UserArray.self, from: data)
        return users.users
    }
    
}




