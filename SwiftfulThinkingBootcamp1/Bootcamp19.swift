//
//  Bootcamp19.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-10.
//

import SwiftUI

// Extracting functions and subviews
struct Bootcamp19: View {
    
    @State var backgroundColor: Color = .orange
    
    var body: some View {
        ZStack{
            //background
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            //content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack{
            Text("Title")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
                    Text("Press me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
    }
    
    func buttonPressed() {
        backgroundColor = .blue
    }
}

struct Bootcamp19_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp19()
    }
}
