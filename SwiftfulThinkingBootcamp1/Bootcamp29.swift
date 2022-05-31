//
//  Bootcamp29.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-22.
//

import SwiftUI

// NavigationView
struct Bootcamp29: View {
    var body: some View {
        // Never embed a NavigationView inside a NavigationView
        // There should always be 1 NavigationView in the hierarchy per app.
        NavigationView {
            ScrollView {
                NavigationLink("Screen 1", destination: Text("Screen 1"))
                NavigationLink("Screen 2", destination: NavigationScreen2())
                NavigationLink("Screen 3", destination: NavigationScreen3())
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("Main view")
            //.navigationBarTitleDisplayMode(.inline)
            //.navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    HStack{
                        // Each item can be a NavigationLink or a sheet
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },
                trailing:
                    NavigationLink(
                        destination: NavigationScreen2(),
                        label: {
                            Image(systemName: "gear")
                        })
                    .accentColor(.red)
            )
        }
    }
}

struct NavigationScreen2: View {
    var body: some View {
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Screen 2")
            
            NavigationLink("Screen 5", destination: Text("Screen 5"))
        }
    }
}

struct NavigationScreen3: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            Color.yellow.edgesIgnoringSafeArea(.all)
                .navigationTitle("Screen 3")
                .navigationBarHidden(true)
            
            VStack{
                Button("back", action: {
                    presentationMode.wrappedValue.dismiss()
                })
                
                NavigationLink("Screen 6", destination: Text("Screen 6"))
            }
        }
    }
}

struct Bootcamp29_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp29()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
