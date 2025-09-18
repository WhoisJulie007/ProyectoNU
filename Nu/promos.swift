import SwiftUI

struct promos: View {
    let imagen: String
    let titulo: String
    let contenido: String
    let boton: String
    
    var body: some View {
        ZStack {
            Image(imagen)
                .resizable()
                .scaledToFill()
                .frame(width: 230, height: 215)
                .clipped()
                .cornerRadius(12)

            VStack {
                Spacer()
                Rectangle()
                    .fill(.promobox)
                    .frame(height: 120)
                    .cornerRadius(12)
                    .overlay(
                        VStack(alignment: .leading, spacing: 6) {
                            Text(titulo)
                                .foregroundColor(.white)
                                .font(.system(size: 13, weight: .bold))
                            
                            Text(contenido)
                                .foregroundColor(.white)
                                .font(.system(size: 13))
                            
                            Text(boton)
                                .font(.system(size: 13, weight: .bold))
                                .foregroundColor(.white)
                                .padding(.vertical, 6)
                                .padding(.horizontal, 16)
                                .background(Color.purple)
                                .cornerRadius(20)
                                .padding(.top, 4)
                        }
                        .padding(10)
                    )
            }
        }
        .frame(width: 230, height: 255)
    }
}


#Preview {
    promos(imagen: "promo", titulo: "Prueba la Billetera de Google™", contenido: "Agrega tu tarjeta de manera\nrápida y segura.", boton:"Saber más")
}
