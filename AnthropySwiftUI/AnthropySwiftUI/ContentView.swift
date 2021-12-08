//
//  ContentView.swift
//  AnthropySwiftUI
//
//  Created by BrysonSaclausa on 11/19/21.
//
import AuthenticationServices
import SwiftUI

struct ContentView: View {
    
    @AppStorage("email") var email: String = ""
    @AppStorage("firstName") var firstName: String = ""
    @AppStorage("lastName") var lastName: String = ""
    @AppStorage("userId") var userId: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                
                if userId.isEmpty {
                    SignInWithAppleButton(.signIn) { request in
                        request.requestedScopes = [.email, .fullName]
                        
                    } onCompletion: { result in
                        switch result {
                        case .success(let auth):
                            
                            switch auth.credential {
                            case let credential as ASAuthorizationAppleIDCredential:
                                // User ID
                                let userId = credential.user
                                // User Info
                                let email = credential.email
                                let firstName = credential.fullName?.givenName
                                let lastName = credential.fullName?.familyName
                                
                                self.email = email ?? ""
                                self.firstName = firstName ?? ""
                                self.lastName = lastName ?? ""
                                self.userId = userId
                                
                                print("signed in")
                                
                            default: break
                            }
                        case .failure(let error):
                            print(error)
                        }//
                        
                    }
                    .frame(height: 50)
                    .padding()
                    .cornerRadius(8)
                }
                else {
                    //signed in show webapp
                    InitialViewTest()
                }
                
                

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
