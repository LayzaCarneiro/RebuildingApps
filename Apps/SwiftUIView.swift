//
//  SwiftUIView.swift
//  Apps_Rebuild
//
//  Created by Layza Maria Rodrigues Carneiro on 25/11/24.
//

import SwiftUI

struct PocaoPolissuco: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottom) {
                VStack {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxHeight: geometry.size.height / 2)
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Nome do personagem")
                                .font(.headline)
                                .foregroundColor(.white)
                            Text("Idade do personagem")
                                .font(.subheadline)
                                .foregroundColor(.white)
                        }
                        Spacer()
                    }
                    .padding()
                    .background(Color.black.opacity(0.5))
                    .cornerRadius(10)
                    .padding(.bottom, 10)
                    .frame(maxWidth: geometry.size.width * 0.9)
                }
            }
        }
    }
}



#Preview {
    PocaoPolissuco()
}
