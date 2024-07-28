//
//  InterestPillView.swift
//  BumbleClone
//
//  Created by baisampayan saha on 7/28/24.
//

import SwiftUI

struct InterestPillView: View {
    
    var iconName: String? = "heart.fill"
    var emoji: String? = "😀"
    var text: String = "Graduate degree"
    
    var body: some View {
        HStack(spacing: 4) {
            if let iconName {
                Image(systemName: iconName)
            } else if let emoji {
                Text(emoji)
            }
            
            Text(text)
        }
        .font(.callout)
        .fontWeight(.medium)
        .padding(.vertical, 6)
        .padding(.horizontal, 12)
        .foregroundStyle(.bumbleBlack)
        .background(.bumbleLightYellow)
        .clipShape(Capsule())
    }
}

#Preview {
    VStack {
        InterestPillView()
        InterestPillView(iconName: nil)
    }
}
