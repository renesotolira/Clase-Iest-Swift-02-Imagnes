//
//  ImageOverlayView.swift
//  Imagenes
//
//  Created by Rene SL on 05/09/23.
//

import SwiftUI

struct ImageOverlayView: View {
    var body: some View {
            Image("tokyo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .overlay(
                    
                    Text("Tokio de Noche")
                        .font(.title)
                        .padding( .vertical, 10)
                        .padding( .horizontal, 20)
                        .foregroundColor(Color.white)
                        .background(Color.blue).opacity(0.8)
                        .cornerRadius(8)
                        .offset(y: 25)
                    
                )
        .ignoresSafeArea()
        
    }
}

struct ImageOverlayView_Previews: PreviewProvider {
    static var previews: some View {
        ImageOverlayView()
    }
}
