//
//  ContentView.swift
//  HoneymoonSwiftUI
//
//  Created by Andre Dippenaar on 2022/05/17.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @State var showAlert: Bool = false
    
    var body: some View {
        VStack {
            HeaderView()
            
            Spacer()
            
            CardView(honeymoon: honeymoonData[2])
            // FIXME: Add padding to the cards later on.
                .padding()
            
            Spacer()
            
            FooterView(showBookingAlert: $showAlert)
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("Success"),
                message: Text("Wishing a lovely and most precious of times together for the amazing couple."),
                dismissButton: .default(Text("Happy Honeymoon!")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
