//
//  componenteCuenta.swift
//  Nu
//
//  Created by win603 on 17/09/25.
//

import SwiftUI

struct componenteCuenta: View {
    var icono: String
    var texto: String
    var textoCuadro: String

    
    var body: some View {
        
        VStack{
            Circle()
            .fill(.white.opacity(0.1))
            .frame(height:60)
            .overlay(
            Image(systemName: icono)
            .foregroundStyle(.white)
            )
            .overlay(
            RoundedRectangle(cornerRadius:5)
            .fill(.moradoNU)
            .overlay(
            Text(textoCuadro).font(.system(size:10)).bold().foregroundColor(.white)
            )
            .frame(width:40, height: 15)
            .offset(y:25)

            )
            Text(texto).font(.system(size:15)).lineLimit(2).multilineTextAlignment(.center).foregroundColor(.white)
        }.frame(width:70).padding(8)
    }
}



#Preview {
    componenteCuenta(icono: "banknote", texto: "Recibir y depositar", textoCuadro: "Nuevo")
}
