//
//  SpotifyRecentCells.swift
//  Apps_Rebuild
//
//  Created by Layza Maria Rodrigues Carneiro on 04/08/24.
//

import SwiftUI

struct SpotifyRecentCells: View {
    
    var imageName: String = Constants.randomImage
    var title: String = "Billie Eilish"
    
    var body: some View {
        HStack(spacing: 16) {
            ImageLoaderView(urlString: imageName)
                .frame(width: 55, height: 55)
            
            Text(title)
                .font(.callout)
                .fontWeight(.semibold)
                .lineLimit(2)
        }
        .padding(.trailing, 8)
        .frame(maxWidth: .infinity, alignment: .leading)
        .themeColors(isSelected: false)
        .cornerRadius(6)
    }
}

#Preview {
    ZStack {
        Color.spotifyBlack.ignoresSafeArea()
        
        VStack {
            HStack {
                SpotifyRecentCells()
                SpotifyRecentCells()
            }
            HStack {
                SpotifyRecentCells()
                SpotifyRecentCells()
            }
        }
        
    }
}
