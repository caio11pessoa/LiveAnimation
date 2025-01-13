//
//  AnimatedProperties.swift
//  LiveAnimation
//
//  Created by Caio de Almeida Pessoa on 30/10/24.
//

import SwiftUI

struct AnimatedProperties: View {
    @State var offset : CGFloat = 50 // Variável interativa

        var body: some View {
            Image("gecko")
                .frame(width: 100, height: 100) // Uso da variável
                .offset(y: offset)
                .animation(.spring, value: offset)
            Image("mosca")
                .frame(width: 100, height: 100) // Uso da variável
                .offset(y: offset + 20)
            HStack{
                Text("🔽")
                    .onTapGesture {
                        offset = offset + 100
                    }
                Spacer()
                Text("🔼")
                    .onTapGesture {
                        offset = offset - 100
                    }
            }
            .padding()
        }
}

#Preview {
    AnimatedProperties()
}
