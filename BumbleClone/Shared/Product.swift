//
//
//  Product.swift
//  BumbleClone
//
//  Created by baisampayan saha on 7/21/24.
//

import Foundation



struct ProductArray: Codable {
    let products: [Product]
    let total, skip, limit: Int
}

struct Product: Codable, Identifiable {
    let id: Int
    let title, description, category: String
    let price, discountPercentage, rating: Double
    let stock: Int
    let brand: String?
    let thumbnail: String
    let images: [String]
}
