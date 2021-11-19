//
//  ContentView.swift
//  AnthropySwiftUI
//
//  Created by BrysonSaclausa on 11/19/21.
//
import AuthenticationServices
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                SignInWithAppleButton(.continue) { request in
                    //
                } onCompletion: { result in
                    //
                }
                .frame(height: 50)
                .padding()
                .cornerRadius(8)

            }
            .navigationTitle("Sign In")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
