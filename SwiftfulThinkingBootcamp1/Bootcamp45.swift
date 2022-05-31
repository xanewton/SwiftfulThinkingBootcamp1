//
//  Bootcamp45.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-29.
//

import SwiftUI

// OnAppear and OnDissappear
struct Bootcamp45: View {
    
    @State var myText: String = "Start text."
    @State var count: Int = 0
    
    var body: some View {
        NavigationView{
            ScrollView{
                Text(myText)
                LazyVStack{
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
                    myText = "This is the new text."
                })
            })
            .onDisappear(perform: {
                myText = "Ending text."
            })
            .navigationTitle("On Appear Bootcamp: \(count)")
        }
    }
}

struct Bootcamp45_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp45()
    }
}
