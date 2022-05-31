//
//  Bootcamp17.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-09.
//

import SwiftUI

// Buttons
struct Bootcamp17: View {
    
    @State var title: String = "No button has been pressed"
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            
            Button("Button 1") {
                self.title = "Button 1 was pressed"
            }
            .accentColor(.red)
            
            Button(action: {
                self.title = "Button 2 was pressed"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            })
            
            Button(action: {
                self.title = "Button 3 was pressed"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.orange)
                    )
            })
            
            Button(action: {
                self.title = "Button 4 was pressed"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            })
        }
    }
}

struct Bootcamp17_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp17()
    }
}
