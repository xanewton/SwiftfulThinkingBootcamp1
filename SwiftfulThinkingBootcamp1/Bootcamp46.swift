//
//  Bootcamp46.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-29.
//

import SwiftUI

// Safe unwrap optionals
struct Bootcamp46: View {
    
    @State var currentUserID: String? = "user123" //nil
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding!")
                
                if let text = displayText {
                   Text(text)
                        .font(.title)
                }
                
                // Do not use ! ever
                // Do not force unwrap values!
                //Text(displayText!)
                //    .font(.title)
                
                if isLoading {
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
                //loadData()
            }
        }
    }
    
    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                displayText = "This is the new data! User ID: \(userID)"
                isLoading = false
            })
        } else {
            displayText = "Error! There is no User ID."
        }
    }
    
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Error! There is no User ID."
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            displayText = "This is the new data! User ID: \(userID)"
            isLoading = false
        })
    }
}

struct Bootcamp46_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp46()
    }
}
