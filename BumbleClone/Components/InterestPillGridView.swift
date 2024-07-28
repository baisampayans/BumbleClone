//
//  InterestPillGridView.swift
//  BumbleClone
//
//  Created by baisampayan saha on 7/28/24.
//

import SwiftUI
import SwiftfulUI

struct UserInterest: Identifiable {
    let id: String = UUID().uuidString
    var iconName: String? = nil
    var emoji: String? = nil
    var text: String
    
}

struct InterestPillGridView: View {
    
    var interests: [UserInterest] = User.mock.interests
    
    var body: some View {
        NonLazyVGrid (columns: 2, alignment: .leading, spacing: 8, items: interests, content: { interest in
            if let interest {
                InterestPillView(iconName: interest.iconName, emoji: interest.emoji, text: interest.text)
            } else {
                EmptyView()
            }
        })
    }
}

#Preview {
    InterestPillGridView()
}
