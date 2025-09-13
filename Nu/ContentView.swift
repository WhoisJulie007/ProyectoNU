//
//  ContentView.swift
//  Nu
//
//  Created by WIN603 on 12/09/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(){
            VStack(){
                HStack{
                    Image(systemName: "photo.badge.plus")
                        .padding()
                    Spacer()
                    Image(systemName: "eye")
                    Image(systemName: "questionmark.circle")
                    Image(systemName: "person.2.badge.plus")
                }
                .foregroundColor(Color.white)
                .font(.system(size: 20))
                HStack{
                    Image("tarjetaNu")
                        .resizable()
                        .frame(width: 40, height: 25)
                        .padding(.leading, 10)
                    Text("Haz crecer tu linea de credito y tus ahorros")
                        .foregroundColor(Color.moradoNU)
                        .font(.system(size: 15))
                        .bold(true)
                    Image(systemName: "ellipsis")
                        .rotationEffect(.degrees(90))
                    
                }
                .frame(width: 300, height: 90)
                .background(Color.white)
                .cornerRadius(10)
            }
            .frame(maxWidth: .infinity, maxHeight: 250)
            .padding(.horizontal, 10)
            .background(Color.moradoNU)
            .ignoresSafeArea(.all)
            Spacer()
            
        }
    }
}

#Preview {
    ContentView()
}
