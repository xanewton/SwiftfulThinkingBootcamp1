//
//  Bootcamp59.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by newtan on 2022-05-31.
//

import SwiftUI

// FocusState in iOS15
struct Bootcamp59: View {
    
    enum OnboardingField: Hashable{
        case username
        case password
    }
    
    //@FocusState private var usernameInFocus: Bool
    @State private var username: String = ""
    //@FocusState private var passwordInFocus: Bool
    @State private var password: String = ""
    @FocusState private var fieldInFocus: OnboardingField?
    
    
    var body: some View {
        //singleTextField
        loginFields
    }
    
    var singleTextField: some View {
        VStack {
            TextField("Add your name here...", text: $username)
                //.focused($usernameInFocus)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("Toogle Focus state") {
                //usernameInFocus.toggle()
                fieldInFocus = .username
            }
        }
        .padding(40)
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                //self.usernameInFocus = true
                self.fieldInFocus = .username
            }
        }
    }
    
    var loginFields: some View {
        VStack {
            TextField("Add your name here...", text: $username)
                //.focused($usernameInFocus)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your password here...", text: $password)
                //.focused($passwordInFocus)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("Sign up 🌎") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("Sign up!")
                } else if usernameIsValid {
                    /*usernameInFocus = false
                    passwordInFocus = true*/
                    fieldInFocus = .password
                } else {
                    /*usernameInFocus = true
                    passwordInFocus = false*/
                    fieldInFocus = .username
                }
            }
        }
        .padding(40)
    }
}

struct Bootcamp59_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp59()
    }
}
