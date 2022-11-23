//
//  ContentView.swift
//  HoneymoonSwiftUI
//
//  Created by Andre Dippenaar on 2022/05/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CardView(honeymoon: honeymoonData[1])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
