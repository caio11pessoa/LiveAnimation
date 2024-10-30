//
//  CustomAnimation.swift
//  LiveAnimation
//
//  Created by Caio de Almeida Pessoa on 30/10/24.
//

import SwiftUI

struct CustomAnimation: View {
    @State var tamanho: CGFloat = 100
    var body: some View {
        VStack {
            Image("gecko")
                .resizable()
                .frame(width: tamanho, height: tamanho)
            Spacer()
            HStack {
                Button {
                    withAnimation(.spring(bounce: 0.9)) {
                        tamanho = 200
                    }
                } label: {
                    Text("Grande")
                }
                Button{
                    withAnimation(.spring(duration: 0.3, bounce: 0.5)) {
                        tamanho = 100
                    }
                } label: {
                    Text("Normal")
                }
                Button{
                    withAnimation {
                        tamanho = 50
                    }
                } label: {
                    Text("Pequeno")
                }
            }
        }
        .padding()
    }
}

#Preview {
    CustomAnimation()
}
