//
//  Bootcamp56.swift
//  SwiftfulThinkingBootcamp1
//
//  Created by newtan on 2022-05-31.
//

import SwiftUI

// Button styles for iOS15
struct Bootcamp56: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("-- Button styles:")
                buttonStyle1
                buttonStyle2
                buttonStyle3
                buttonStyle4
                
                Text("-- Button sizes:")
                buttonSize1
                buttonSize2
                buttonSize3
                buttonSize4
            }
            
            Text("-- Resisable button:")
            resizableButton1
            
            Text("-- Resisable button, border shape:")
            resizableButtonBorderShape
            
            //Spacer()
        }
    }
}

struct Bootcamp56_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp56()
    }
}

extension Bootcamp56 {
    
    var buttonStyle1: some View {
        Button("Button title"){
            
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .buttonStyle(.plain)
    }
    
    var buttonStyle2: some View {
        Button("Button title"){
            
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .buttonStyle(.bordered)
    }
    
    var buttonStyle3: some View {
        Button("Button title"){
            
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .buttonStyle(.borderedProminent)
    }
    
    var buttonStyle4: some View {
        Button("Button title"){
            
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .buttonStyle(.borderless)
    }
    
    var buttonSize1: some View {
        Button("Button title"){
            
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
    }
    
    var buttonSize2: some View {
        Button("Button title"){
            
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .buttonStyle(.borderedProminent)
        .controlSize(.small)
    }
    
    var buttonSize3: some View {
        Button("Button title"){
            
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .buttonStyle(.borderedProminent)
        .controlSize(.regular)
    }
    
    var buttonSize4: some View {
        Button("Button title"){
            
        }
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .buttonStyle(.borderedProminent)
        .controlSize(.mini)
    }
    
    var resizableButton1: some View {
        Button {
            
        } label: {
            Text("Button title")
                .frame(height: 55)
                .frame(maxWidth: .infinity)
        }
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
    }
    
    var resizableButtonBorderShape: some View {
        Button {
            
        } label: {
            Text("Button title")
                .frame(height: 55)
                .frame(maxWidth: .infinity)
        }
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.capsule)
        .controlSize(.large)
    }
}
