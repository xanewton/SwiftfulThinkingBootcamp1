//
//  Bootcamp60.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by newtan on 2022-05-31.
//

import SwiftUI

// Customize keyboard Submit button in iOS15
struct Bootcamp60: View {
    
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            TextField("Placeholder ...", text: $text)
                .submitLabel(.route)
                .onSubmit {
                    print("Something to the console!")
                }
            
            TextField("Placeholder ...", text: $text)
                .submitLabel(.next)
                .onSubmit {
                    print("Something to the console!")
                }
            
            TextField("Placeholder ...", text: $text)
                .submitLabel(.search)
                .onSubmit {
                    print("Something to the console!")
                }
        }
    }
}

struct Bootcamp60_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp60()
    }
}
