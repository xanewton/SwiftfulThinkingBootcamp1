//
//  Bootcamp16.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-09.
//

import SwiftUI

// SafeArea
struct Bootcamp16: View {
    var body: some View {
        // Way 1: Adding a background color that ignores the safe area
        ScrollView{
            VStack{
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background(
            Color.blue
                //.edgesIgnoringSafeArea(.all) //old
                .ignoresSafeArea()
        )
        
        
        /*
        // Way 2: Adding a background color that ignores the safe area
        ZStack{
            // background
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            //foreground -> By default all views are in the safe area
            VStack {
                Text("Hello, World!")
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            //.background(Color.red)
        }*/
        
        
    }
}

struct Bootcamp16_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp16()
    }
}
