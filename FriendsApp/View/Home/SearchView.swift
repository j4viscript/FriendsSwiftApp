//
//  SearchView.swift
//  Friends
//
//  Created by Javier Oskar Murillo Cota on 07/03/23.
//

import SwiftUI

struct SearchView: View {
    @State private var product: String = ""
    var body: some View {
        HStack{
            Button(action: {}, label:{
                Image(systemName:"magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black.opacity(0.5))
            })//:BUTTON
            TextField("Buscar producto", text: $product)
                .frame(height: 30)
            Button(action: {}, label: {
                Image(systemName: "slider.horizontal.3")
                    .font(.title)
                    .foregroundColor(.black.opacity(0.5))
            })
        }//:HSTACK
        .padding(10)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
