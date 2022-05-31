//
//  Bootcamp51.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-30.
//

import SwiftUI

// AppStorage
struct Bootcamp51: View {
    
    // Old way: Using UserDefaults
    //@State var currentUserName: String?
    
    // SwiftUI way: Using AppStorage, which uses UserDefaults to load and save automatically
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add name here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name: String = "Lucy"
                currentUserName = name
                //UserDefaults.standard.set(name, forKey: "name")
            }
        }
        /*.onAppear() {
            currentUserName = UserDefaults.standard.string(forKey: "name")
        }*/
    }
}

struct Bootcamp51_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp51()
    }
}
