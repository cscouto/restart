//
//  HomeView.swift
//  Restart
//
//  Created by Tiago Couto on 2/9/22.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboarding: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            RestartImage(title: "character-2", color: .gray, colorOpacity: 0.2)
            
            Text("The time that leads to mastery is dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
            Button {
                self.isOnboarding = true
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3, design: .rounded).bold())
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)

        }//: VSTACK
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
