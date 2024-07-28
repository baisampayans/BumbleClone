//
//  BumbleHeartView.swift
//  BumbleClone
//
//  Created by baisampayan saha on 7/23/24.
//

import SwiftUI

struct BumbleHeartView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(.bumbleYellow)
                .frame(width: 40, height: 40)
            
            Image(systemName: "bubble.fill")
                .foregroundStyle(.bumbleBlack)
                .font(.system(size: 22))
                .offset(y: 2)
            
            Image(systemName: "heart.fill")
                .foregroundStyle(.bumbleYellow)
                .font(.system(size: 10))
        }
        .onTapGesture {
            
        }
    }
}

#Preview {
    BumbleHeartView()
}
