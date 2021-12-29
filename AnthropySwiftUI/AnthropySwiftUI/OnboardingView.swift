//
//  OnboardingView.swift
//  AnthropySwiftUI
//
//  Created by BrysonSaclausa on 12/28/21.
//

import SwiftUI

struct OnboardingView: View {
    
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
//        if currentPage > totalPages {
//            OnboardingView()
//        }
//        else {
//            OnboardingView()
//        }
        // For Slide Animation
        
        ZStack {
            
            //Changing between views...
            if currentPage == 1 {
                ScreenView(image: "image1", title: "Step 1", detail: "", bgColor: Color("Color1"))
            }
            if currentPage == 2 {
                ScreenView(image: "image2", title: "Step 2", detail: "", bgColor: Color("Color2"))
            }
            if currentPage == 3 {
                ScreenView(image: "image3", title: "Step 3", detail: "", bgColor: Color("Color3"))
            }
            
            
        }
        
        .overlay(
            
            //Button...
            Button(action: {
                print("Go to step 2")
                //changing views
                withAnimation(.easeInOut) {
                    //checking..
                    if currentPage <= totalPages {
                        currentPage += 1
                    }
                    else {
                        currentPage = 1
                    }
                }
                
                //checking..
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
    
    var image: String
    var title: String
    var detail: String
    var bgColor: Color
    
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                
                //Showing it only for first page...
                if currentPage == 1 {
                    Text("Hello Member!")
                        .font(.title)
                        .fontWeight(.semibold)
                    // Letter Spacing..
                        .kerning(1.4)
                }
                else {
                    Button(action: {}, label:  {
                        
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .background(Color.black.opacity(0.4))
                            .cornerRadius(10)
                            
                    })
                }
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("Skip")
                        .fontWeight(.semibold)
                        .kerning(1.2)
                })
            }
            .foregroundColor(.black)
            .padding()
            
            Spacer(minLength: 0)
            
            //IMAGE 1...
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                                
            Text(title)
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
        .background(bgColor.ignoresSafeArea())
    }
}

var totalPages = 3
