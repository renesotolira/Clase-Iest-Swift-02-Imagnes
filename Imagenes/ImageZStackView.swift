//
//  ContentView.swift
//  Imagenes
//
//  Created by Rene SL on 05/09/23.

//

import SwiftUI

struct ImageZStackView: View {
    var body: some View {
        ZStack {
            Image(systemName: "person.3.sequence.fill")
                .font(.system(size:80))
                .imageScale(.large)
                .foregroundColor(.green)
                .accentColor(.purple)
                .shadow(color: .blue, radius: 10, x:0 , y:10)
            
            Text("3 personas")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .padding(.horizontal)
                .foregroundColor(Color.white)
                .background(Color.black).opacity(0.5)
                .cornerRadius(8)
                .offset(y: 25)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ImageZStackView()
    }
}
