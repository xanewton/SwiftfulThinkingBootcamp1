//
//  Bootcamp27.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-22.
//

import SwiftUI

// Pop up sheets and full screen covers
struct Bootcamp27: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
            // Only one: fullScreenCover or sheet
            //.fullScreenCover(isPresented: $showSheet, content: {
            //    SecondScreen()
            //})
            .sheet(isPresented: $showSheet, content: {
                // Do not add conditional logic here
                SecondScreen()
            })
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red.ignoresSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}

struct Bootcamp27_Previews: PreviewProvider {
    static var previews: some View {
        //SecondScreen()
        Bootcamp27()
    }
}
