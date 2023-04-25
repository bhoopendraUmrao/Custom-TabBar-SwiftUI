//
//  TabMenuIcon.swift
//  CustomTabBar
//
//  Created by Bhoopendra Umrao on 4/25/23.
//

import SwiftUI

struct TabMenuIcon: View {
    @Binding var showMenu: Bool
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.white)
                .frame(width: 56, height: 56)
                .shadow(radius: 4)
            Image(systemName: "plus.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .foregroundColor(Color(.systemBlue))
                .rotationEffect(Angle(degrees: showMenu ? 45 : 0))
        }
        .offset(y: -44)
    }
}
