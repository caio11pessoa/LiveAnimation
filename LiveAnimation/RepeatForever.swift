//
//  RepeatForever.swift
//  LiveAnimation
//
//  Created by Caio de Almeida Pessoa on 30/10/24.
//

import SwiftUI

struct RepeatForever: View {
    @State var xOffset: CGFloat = -50
    @State var yOffset: CGFloat = 50
    var body: some View {
        VStack{
            Image("gecko")
                .resizable()
                .frame(width: 75, height: 75)
                .offset(x: xOffset, y: yOffset)
            Image("mosca")
                .resizable()
                .frame(width: 25, height: 25)
                .offset(x: -xOffset, y: yOffset)
            Spacer()
            Button {
                withAnimation(.spring(duration: 0.3, bounce: 0.5).repeatForever()) {
                    xOffset = 50
                }
            } label: {
                Text("Iniciar")
            }
        }
    }
}

#Preview {
    RepeatForever()
}
