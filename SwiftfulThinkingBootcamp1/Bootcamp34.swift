//
//  Bootcamp34.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-25.
//

import SwiftUI

// Textfield
struct Bootcamp34: View {
    
    @State var textFieldText: String  = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("Type some text here ...", text: $textFieldText)
                    //.textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button(action: {
                    if textIsAppropiate() {
                        saveText()
                    }
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropiate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                .disabled(!textIsAppropiate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp!")
        }
    }
    
    func textIsAppropiate() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct Bootcamp34_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp34()
    }
}
