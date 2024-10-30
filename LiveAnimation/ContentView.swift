//
//  ContentView.swift
//  LiveAnimation
//
//  Created by Caio de Almeida Pessoa on 30/10/24.
//

import SwiftUI
/*
 Caso você use apenas o withAnimation o compilador aplicará uma animação do tipo “spring” (mola, em português). Cada tipo de animação tem uma velocidade, duração e aceleração especificos. A “spring” padrão faz com que o início da animação tenha uma aceleração maior que o fim, fazendo um repouso suave. O gráfico abaixo demonstra a dinâmica da animação padrão.
*/

struct ContentView: View {
    @State var tamanho: CGFloat = 100
    var body: some View {
        VStack {
            Image("gecko")
                .resizable()
                .frame(width: tamanho, height: tamanho)
            Spacer()
            HStack {
                Button {
                    withAnimation {
                        tamanho = 200
                    }
                } label: {
                    Text("Grande")
                }
                Button{
                    withAnimation {
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
    ContentView()
}
