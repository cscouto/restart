//
//  OnboardingView.swift
//  Restart
//
//  Created by Tiago Couto on 2/9/22.
//

import SwiftUI

struct OnboardingView: View {
    //the value being set is not overriding, it works like a default value in case userdefaults is nil
    
    @AppStorage("onboarding") var isOnboarding: Bool = true
    
    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea()
            VStack(spacing: 20) {
                Spacer()
                
                VStack(spacing: 0) {
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    Text("""
                    It's not how much we give but
                    how much love we put into giving.
                    """)
                        .font(.title3)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .padding(.horizontal, 10)
                }
                
                RestartImage(title: "character-1", color: .white, colorOpacity: 0.2)
                
                Spacer()
                
                ZStack {
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                    
                    Text("Get Started")
                        .font(.system(.title3, design: .rounded).bold())
                        .foregroundColor(.white)
                        .offset(x: 20)
                    
                    HStack {
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: 80)
                        Spacer()
                    }
                    
                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color("ColorRed"))
                            Circle()
                                .fill(Color.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24).bold())
                        }
                        .foregroundColor(Color.white)
                        .frame(width: 80, height: 80, alignment: .center)
                        .onTapGesture {
                            isOnboarding = false
                        }
                        
                        Spacer()
                    }
                }
                .frame(height: 80, alignment: .center)
                .padding()
            }
        }
        
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            OnboardingView()
        }
    }
}

struct RestartImage: View {
    let title: String
    let color: Color
    let colorOpacity: Double
    
    var body: some View {
        ZStack {
            ZStack {
                Circle()
                    .stroke(color.opacity(colorOpacity), lineWidth: 40)
                    .frame(width: 260, height: 260, alignment: .center)
                Circle()
                    .stroke(color.opacity(colorOpacity), lineWidth: 80)
                    .frame(width: 260, height: 260, alignment: .center)
                Image(title)
                    .resizable()
                    .scaledToFit()
            }
        }
    }
}
