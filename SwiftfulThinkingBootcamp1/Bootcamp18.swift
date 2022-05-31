//
//  Bootcamp18.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-09.
//

import SwiftUI

// State variables
struct Bootcamp18: View {
    @State var title: String = "My title"
    @State var backgroundColor: Color = Color.orange
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            //background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            //content
            VStack(spacing: 20) {
                Text(title)
                    .font(.title)
                
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20){
                    Button("Button 1", action: {
                        self.title = "Button 1 was pressed"
                        self.backgroundColor = .blue
                        self.count += 1
                    })
                    Button("Button 2", action: {
                        self.title = "Button 2 was pressed"
                        self.backgroundColor = .purple
                        self.count -= 1
                    })
                }
            }
        }
        .foregroundColor(Color.white)
    }
}

struct Bootcamp18_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp18()
    }
}
