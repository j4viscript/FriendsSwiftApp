//
//  LogoView.swift
//  Friends
//
//  Created by Javier Oskar Murillo Cota on 07/03/23.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4){
            Image("Friends")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 50, alignment: .center)
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
