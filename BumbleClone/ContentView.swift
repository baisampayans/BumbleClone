//
//  ContentView.swift
//  BumbleClone
//
//  Created by Baisampayan Saha Ultra on 7/20/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var users: [User] = []
    @State private var products: [Product] = []
    
    var body: some View {
        ScrollView(content: {
            VStack(content: {
                ForEach(products) { user in
                    Text(user.title)
                }
                
            })
        })
            .task {
                await getData()
            }
    }
    
    private func getData() async {
        do {
            users =  try await DatabaseHelper().getUsers()
            products = try await DatabaseHelper().getProducts()
        } catch {
            print(error)
        }
    }
}

#Preview {
    ContentView()
}
