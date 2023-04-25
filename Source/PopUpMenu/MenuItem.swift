//
//  MenuItem.swift
//  CustomTabBar
//
//  Created by Bhoopendra Umrao on 4/25/23.
//

import SwiftUI

struct MenuItem: View {
    let viewModel: MenuViewModel
    let dimension: CGFloat = 48
    var body: some View {
        VStack(alignment: .center, spacing: 12) {
            ZStack {
                Circle()
                    .foregroundColor(Color(.systemBlue))
                    .frame(width: dimension, height: dimension)
                    .shadow(radius: 4)
                Image(systemName: viewModel.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(12)
                    .frame(width: dimension, height: dimension)
                    .foregroundColor(Color(.white))
            }
            viewModel.view
                .foregroundColor(.white)
                .font(.footnote)
        }
    }
}
