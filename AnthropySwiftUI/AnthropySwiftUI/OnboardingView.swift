//
//  OnboardingView.swift
//  AnthropySwiftUI
//
//  Created by BrysonSaclausa on 12/28/21.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        
        // For Slide Animation
        
        ZStack {
            VStack(spacing: 20) {
            HStack {
                Text("Hello Member!")
                    .font(.title)
                    .fontWeight(.semibold)
                // Letter Spacing..
                    .kerning(1.4)
                Spacer()
                
                Button(action: {}, label: {
                    Text("Skip")
                        .fontWeight(.semibold)
                        .kerning(1.2)
                })
            }
                .foregroundColor(.black)
                .padding()
                
                Spacer(minLength: 0)
                
                //IMAGE 1...
//                Image("imageNmae")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
                Text("Step 1")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.top)
                
                Text("Lorem ipsum is dummy text used in laying out print, graphic or web design")
                    .fontWeight(.semibold)
                    .kerning(1.3)
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 0)
            }
            .background(.blue)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}