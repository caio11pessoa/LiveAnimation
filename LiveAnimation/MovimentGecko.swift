//
//  MovimentGecko.swift
//  LiveAnimation
//
//  Created by Caio de Almeida Pessoa on 30/10/24.
//

import SwiftUI

struct MovimentGecko: View {
    @State var xOffset : CGFloat = 0
    @State var yOffset : CGFloat = 0
    var body: some View {
        ZStack{
            Image("gecko")
                .resizable()
                .frame(width: 75, height: 75)
                .offset(x: xOffset, y: yOffset)
            VStack{
                Button{
                    withAnimation {
                        
                        yOffset -= 75
                    }

                } label: {
                    Image(systemName: "arrowshape.up.fill")
                        .imageScale(.large)
                }
                
                Spacer()
                HStack {
                    Button{
                        withAnimation {
                            
                            xOffset -= 50
                        }
                    } label: {
                        Image(systemName: "arrowshape.left.fill")
                            .imageScale(.large)
                    }
                    Spacer()
                    Button {
                        withAnimation {
                            
                            xOffset += 50
                        }
                    } label: {
                        Image(systemName: "arrowshape.right.fill")
                            .imageScale(.large)
                    }
                }
                Spacer()
                Button {
                    withAnimation {
                        yOffset += 75
                    }
                } label: {
                    Image(systemName: "arrowshape.down.fill")
                        .imageScale(.large)
                }
            }
        }
    }
}

#Preview {
    MovimentGecko()
}
