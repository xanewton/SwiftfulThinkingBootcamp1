//
//  Bootcamp35.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-26.
//

import SwiftUI

// TextEditor
struct Bootcamp35: View {
    
    @State var textEditorText: String = "Type your text here"
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    //.foregroundColor(Color.red)
                    //.background(Color.red) //<-- Doesn't work
                    .colorMultiply(Color.gray.opacity(0.5))
                    .cornerRadius(10)
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                Text(savedText)
                
                Spacer()
            }
            .padding()
            //.background(Color.green)
            .navigationTitle("TextEditor Bootcamp!")
        }
    }
}

struct Bootcamp35_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp35()
    }
}
