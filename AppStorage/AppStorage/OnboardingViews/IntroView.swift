//
//  IntroView.swift
//  AppStorage
//
//  Created by Lucas Neves dos santos pompeu on 21/11/23.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            //background
            RadialGradient(gradient: Gradient(colors: [Color.purple, Color.black]), center: .topLeading, startRadius: 5, endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            
            if currentUserSignedIn {
                Text("ProfileView")
            } else {
                Text("Onboarding View")
            }
            
            // if user is signed in
            // profile view
            // else
            // Onboarding View
        }
    }
}

#Preview {
    IntroView()
}
