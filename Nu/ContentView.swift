//
//  ContentView.swift
//  Nu
//
//  Created by WIN603 on 12/09/25.
//

import SwiftUI

struct ContentView: View {
    var cantidadCuenta = "$0.00"
    var cantidadOculta = "****"
    var cantidadCredito = "$52.00"
    @State var dinero: String
    @State var credito: String
    @State var iconoOjo = "eye"

    init() {
    _dinero = State(initialValue: cantidadCuenta)
    _credito = State(initialValue: cantidadCredito)
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            ZStack {
                Color.black
                VStack{
                    VStack{
                        ZStack{
                            Color.moradoNU
                        }
                        .frame(height: 160)
                        .overlay(
                            VStack{
                                HStack{
                                    ZStack{
                                        Circle()
                                            .fill(.white.opacity(0.25))
                                            .frame(width: 45, height: 45)
                                        Image(systemName: "photo.badge.plus")
                                            .font(.system(size:18))
                                            .foregroundStyle(.white)
                                    }
                                    
                                    Spacer()
                                    HStack (spacing:22){
                                        Button(action: {
                                            if (iconoOjo == "eye"){
                                                dinero = cantidadOculta
                                                credito = cantidadOculta
                                                iconoOjo = "eyebrow"
                                            } else {
                                                dinero = cantidadCuenta
                                                credito = cantidadCredito
                                                iconoOjo = "eye"
                                            }
                                        }){
                                            Image(systemName:iconoOjo)
                                                .foregroundStyle(.white)
                                        }
                                        Image(systemName: "questionmark.circle")
                                            .foregroundStyle(.white)
                                        Image(systemName:"person.2.badge.plus")
                                            .foregroundStyle(.white)
                                    }.font(.system(size: 20))
                                    
                                }.padding(.top, 20)
                                    .padding(.horizontal, 10)
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius: 12).fill(.white).frame(height: 70)
                                    HStack (spacing:10) {
                                        Image("tarjetaNu")
                                            .resizable()
                                            .frame(width: 40, height: 25)
                                        
                                        Text("Haz crecer tu linea de credito y tus ahorros").foregroundColor(.purple).font(.system(size: 15)).bold()
                                            .lineLimit(2).padding()
                                        
                                        Image(systemName: "ellipsis")
                                            .rotationEffect(.degrees(90))
                                            .foregroundStyle(.moradoNU)
                                    }
                                }.padding(10)
                            }
                            
                        )
                    }
                    VStack(spacing:10){
                        HStack{
                            Text("Cuenta Nu").foregroundColor(.white)
                                .font(.system(size:15))
                            Spacer()
                            Image(systemName: "chevron.right")
                                .font(.system(size:12))
                                .foregroundStyle(.white)
                        }
                        Text(dinero).foregroundColor(.white)
                            .font(.system(size:15))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ScrollView(.horizontal){
                            HStack(alignment: .top, spacing:10){
                                componenteCuenta(icono: "creditcard", texto: "Recibir y depositar", textoCuadro: "Nuevo")
                                componenteCuenta(icono: "creditcard.fill", texto: "Transferir", textoCuadro: "Nuevo")
                                componenteCuenta(icono: "dollarsign.circle", texto: "Disponer saldo", textoCuadro: "$2000")
                                componenteCuenta(icono: "dollarsign.bank.building.fill", texto: "Simular préstamo", textoCuadro: "$2000")
                                componenteCuenta(icono: "banknote", texto: "Revisar crédito", textoCuadro: "Disponible")
                                
                            }
                            
                        }
                        Divider()
                        HStack{
                            Text("Tarjeta de credito").foregroundColor(.white)
                                .font(.system(size:15))
                            Spacer()
                            Image(systemName: "chevron.right")
                                .font(.system(size:12))
                                .foregroundStyle(.white)
                        }
                        Text(credito).foregroundColor(.white)
                            .font(.system(size:15))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(spacing:5){
                            Text("Fecha de corte: 16 SEP").foregroundColor(.gray)
                                .font(.system(size:12))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("Límite disponible: $2000").foregroundColor(.gray)
                                .font(.system(size:12))
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.white.opacity(0.2))
                        
                        
                    }.padding(.horizontal, 12)
                        .padding(.top, 20)
                    
                    VStack(alignment: .leading){
                        
                        
                        //Mis tarjetas
                        HStack(){
                            Image(systemName: "wallet.bifold")
                                .padding(.leading)
                            Text("Mis tarjetas")
                                .bold(true)
                            Spacer()
                        }
                        .padding(10.0)
                        .frame(width: 350, height: 80)
                        .font(.system(size: 20))
                        .foregroundColor(Color.white)
                        .background(Color.secondary)
                        .cornerRadius(15)
                        .padding(20.0)
                        
                        
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.white.opacity(0.2))
                        
                        HStack{
                            Text("Préstamo personal")
                                .padding(.top, 10)
                                .foregroundColor(Color.white)
                                .bold(true)
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                        .font(.system(size: 20))
                        Text("Simula y descrubre en segundo la oferta que tenemos para ti")
                            .foregroundColor(Color.gray)
                        
                        Text("Simular préstamo")
                            .font(.system(size: 13, weight: .bold))
                            .foregroundColor(.white)
                            .padding(.vertical, 6)
                            .padding(.horizontal, 16)
                            .background(.moradoNU)
                            .cornerRadius(20)
                            .padding(.top, 4)
                            .padding(.bottom,10)
                        
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.white.opacity(0.2))
                        
                        ScrollView(.horizontal, showsIndicators: true) {
                            HStack{
                                promos(imagen: "promo", titulo: "Prueba la Billetera de Google™", contenido: "Agrega tu tarjeta de manera\nrápida y segura.", boton:"Saber más")
                                
                                promos(imagen: "promo2", titulo: "La era Nu se acerca", contenido: "Invita a un amigo a unirse a Nu y te damos un regalo", boton:"Invitar a un amigo")
                                
                                promos(imagen: "promo3", titulo: "Conoce los beneficios de Nu", contenido: "Descubre los descuentos y colaboracion con diversas marcas", boton:"Descubrir")
                            }
                        }
                        

                        
                    }.padding(.horizontal, 12)
                    
                    
                    
                    
                }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                    
            }
            
        }
        .ignoresSafeArea()

    }
    
}

#Preview {
    ContentView()
}
