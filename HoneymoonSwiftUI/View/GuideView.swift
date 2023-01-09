//
//  GuideView.swift
//  HoneymoonSwiftUI
//
//  Created by Andre Dippenaar on 2022/11/23.
//

import SwiftUI

struct GuideView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20, content: {
                HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("Get Started!")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                Text("Discover and pick the perfect destination for your romantic honeymoon!")
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 10)
                
                VStack(alignment: .leading, spacing: 25) {
                    GuideComponent(
                        title: "Like",
                        subtitle: "Swipe right",
                        description: "Do you like this destination? Touch the screen and swipe right. It will be saved to the favourites.",
                        icon: "heart.circle")
                    
                    GuideComponent(
                        title: "Dismiss",
                        subtitle: "Swipe left",
                        description: "Would you rather skip this place? Touch the screen and swipe left. You will no longer see it",
                        icon: "xmark.circle")
                    
                    GuideComponent(
                        title: "Book",
                        subtitle: "Tap the button",
                        description: "Our selection of honeymoon resorts is the perfect setting for you to embark your life together",
                        icon: "checkmark.square")
                }
                
                Spacer(minLength: 10)
                
                Button {
                    // ACTION
//                    print("A button was tapped.")
                    self.presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Continue".uppercased())
                        .modifier(ButtonModifier())
                }

            })
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
        }
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}
