//
//  NavigationBarView.swift
//  Friends
//
//  Created by Javier Oskar Murillo Cota on 07/03/23.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - PROPIERTIES
    @State private var isAnimated: Bool = false
    //MARK: -BODY
    var body: some View {
        VStack {
            HStack {
                //Search
                Button(action: {}, label: {
                    Image(systemName: "line.3.horizontal")
                        .font(.title)
                        .foregroundColor(.white)
                })//: BUTTON
                Spacer()
                LogoView()
                    .opacity(isAnimated ? 1: 0)
                    .offset(x:0, y: isAnimated ? 0: -25)
                    .onAppear(perform:{
                        withAnimation(.easeOut(duration: 0.5)){
                            isAnimated.toggle()
                        }
                    })
                Spacer()
                // Cart
                Button(action: {}, label: {
                    ZStack {
                        Image(systemName: "cart")
                            .font(.title)
                        .foregroundColor(.white)
                        //Red point
                        Circle()
                        .fill(.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                    }
                })//: BUTTON
            }
            SearchView()
                .background(Color.white)
        } //: HSTACK

    }
}//:MARK: PREVIEW

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(primaryColor)
    }
}
