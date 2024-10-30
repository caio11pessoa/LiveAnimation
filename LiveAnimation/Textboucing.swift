//
//  Textboucing.swift
//  LiveAnimation
//
//  Created by Caio de Almeida Pessoa on 30/10/24.
//

import SwiftUI

struct Textboucing: View {
    @State var helloWorldFont: Font = .largeTitle
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("Hello, World!")
                    .font(helloWorldFont)
                    .onAppear(perform: {
                        withAnimation(.easeInOut(duration: 1.0).repeatForever()) {
                            helloWorldFont = .title3
                        }
                    })
                Spacer()
            }
        }
    }
}

#Preview {
    Textboucing()
}
