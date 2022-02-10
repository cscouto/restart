//
//  ContentView.swift
//  Restart
//
//  Created by Tiago Couto on 2/9/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboarding: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboarding {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
