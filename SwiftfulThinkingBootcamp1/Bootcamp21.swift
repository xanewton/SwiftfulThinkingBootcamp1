//
//  Bootcamp21.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-10.
//

import SwiftUI

// Binding property wrapper
struct Bootcamp21: View {
    // State watch for changes in the variable and redraw the view
    @State var backgroundColor: Color = Color.green
    @State var title:String = "This is the title"
    
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea(.all)
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct Bootcamp21_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp21()
    }
}

struct ButtonView: View {
    // Binding tells that the object is connected to the parent view
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var buttonColor: Color = .blue
    
    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
            buttonColor = Color.red
            title = "Button was pressed!"
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}
