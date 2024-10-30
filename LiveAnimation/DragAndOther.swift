//
//  DragAndOther.swift
//  LiveAnimation
//
//  Created by Caio de Almeida Pessoa on 30/10/24.
//

import SwiftUI

struct DragAndOther: View {
    @State private var offset: CGPoint = CGPoint(x: 185, y: 350)
    @State private var Contratar: Bool = false
    @State private var Dispensar: Bool = false
    
    var body: some View {
        ZStack{
            VStack{
                Text("Arraste para Contratar")
                    .font(Contratar ? .title : .callout)
                Spacer()
                Text("Arraste para Dispensar")
                    .font(Dispensar ? .title : .callout)
            }
            Image("gecko")
                .position(offset)
                .gesture(
                    DragGesture()
                        .onChanged { gesture in
                            offset = gesture.location
                            withAnimation {
                                
                                if(offset.y <= 200){
                                    Contratar = true
                                }else {
                                    Contratar = false
                                }
                                if(offset.y >= 500){
                                    Dispensar = true
                                }else {
                                    Dispensar = false
                                }
                            }
                        }
                        .onEnded{ gesture in
                            
                            if(gesture.location.y <= 200){
                                // Ação de Contratar
                            }
                            if(gesture.location.y >= 500){
                                // Ação de Dispensar
                            }
                            withAnimation {
                                offset = CGPoint(x: 185, y: 350)
                                Dispensar = false
                                Contratar = false
                            }
                        }
                )
        }
    }
}

#Preview {
    DragAndOther()
}
