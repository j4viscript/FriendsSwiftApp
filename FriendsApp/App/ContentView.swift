//
//  ContentView.swift
//  FriendsApp
//
//  Created by Javier Oskar Murillo Cota on 07/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
              NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(primaryColor)
                          .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                Spacer()
          } //: VSTACK
            .background(Color.white
              .ignoresSafeArea(.all, edges: .all))
      }//: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        .previewDevice("iPhone 14 Pro")
    }
}



