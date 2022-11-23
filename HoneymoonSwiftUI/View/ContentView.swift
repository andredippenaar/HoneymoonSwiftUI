//
//  ContentView.swift
//  HoneymoonSwiftUI
//
//  Created by Andre Dippenaar on 2022/05/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            Spacer()
            
            CardView(honeymoon: honeymoonData[2])
            // FIXME: Add padding to the cards later on.
                .padding()
            
            Spacer()
            
            FooterView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
