//
//  WebImageView.swift
//  Imagenes
//
//  Created by Rene SL on 05/09/23.
//

import SwiftUI

struct WebImageView: View {
    let imageURL = "https://images4.alphacoders.com/936/936378.jpg"
    
    var body: some View {
        VStack{
            
            AsyncImage(url: URL(string: imageURL)){
                estadoDeImagen in
                
                switch estadoDeImagen {
                case .empty:
                    //mientras busca y carga la imagen
                    ProgressView()
                    
                case .success(let image) :
                    //manipulando la imagen descargada
                    image
                        .resizable()
                        .frame(width: 300 , height: 350 )
                        .clipShape(Capsule())
                        .shadow(radius: 20)
                    
                case .failure:
                    //en caso de que no cargue la url
                    Image(systemName: "tokyo")
                        .imageScale(.large)
                    
                default:
                    EmptyView()
                }
            }
         
            RoundedRectangle(cornerRadius: 25)
            .fill(.black)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 70, maxHeight: 110)
            .overlay(
                
                Text("\"El Universo\" pintura al oleo")
                    .font(.largeTitle)
                    .foregroundColor(.yellow)
                    .multilineTextAlignment(.center)
                
            ).padding(.horizontal)
            
        }
            
    }
}

struct WebImageView_Previews: PreviewProvider {
    static var previews: some View {
        WebImageView()
    }
}
