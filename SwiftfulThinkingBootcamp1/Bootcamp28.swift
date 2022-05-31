//
//  Bootcamp28.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-22.
//

import SwiftUI

// Using Sheets, Animations, Transitions to create a pop up
struct Bootcamp28: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button", action: { showNewScreen.toggle() })
                    .foregroundColor(.white)
                    .font(.largeTitle)
                Spacer()
            }
            
            // Method 1 - Sheet -> Only one sheet, default animation
            //.sheet(isPresented: $showNewScreen, content: { NewScreen1() })
            
            // Method 2 - Transition -> Multiple sheets, configurable transition
            // Try to use this method because we are still in the same view
            /*ZStack{
                if showNewScreen {
                    NewScreen2(showNewScreen: $showNewScreen)
                        .padding(.top, 120)
                        .transition(.move(edge: .bottom))
                        .animation(.spring())
                }
            }
            .zIndex(2.0) // To have this stack on top of the previous and still have the transisiton
            */
            
            // Method 3 - Animation offset -> Multiple sheets, configurable animation
            // Or Try to use this method because we are still in the same view
            NewScreen2(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}

struct NewScreen1: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
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

struct NewScreen2: View {
    
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}

struct Bootcamp28_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp28()
        //NewScreen1()
    }
}
