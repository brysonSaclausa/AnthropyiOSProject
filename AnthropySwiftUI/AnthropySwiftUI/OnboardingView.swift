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
            ScreenView()
        }
        
        .overlay(
            
            //Button...
            Button(action: {
                print("Go to step 2")
            }, label: {
                Image(systemName: "chevron.right")
                    .font(.system(size: 20, weight: .semibold))
                    .foregroundColor(.black)
                    .frame(width: 60, height: 60)
                    .background(Color.white)
                    .clipShape(Circle())
            //Circular Slider...
                    .overlay(
                    
                        ZStack{
                            
                            Circle()
                                .stroke(Color.black.opacity(0.04),lineWidth:4)
                                
                            
                            Circle()
                                .trim(from: 0, to: 0.3)
                                .stroke(Color.white,lineWidth: 4)
                                .rotationEffect(.init(degrees: -90))
                        }
                            .padding(-15)
                    )
                    
            })
            ,alignment: .bottom
        )
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

struct ScreenView: View {
    var body: some View {
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
            
            //Minimum spacing when phone in reducing
            
            Spacer(minLength: 100)
        }
        .background(Color("Color1").ignoresSafeArea())
    }
}
