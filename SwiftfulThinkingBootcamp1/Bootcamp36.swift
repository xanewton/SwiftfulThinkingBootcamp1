//
//  Bootcamp36.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-26.
//

import SwiftUI

// Toogle
struct Bootcamp36: View {
    
    @State var toogleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack{
                Text("Status:")
                Text(toogleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(isOn: $toogleIsOn, label: { Text("Change status") })
                .toggleStyle(SwitchToggleStyle(tint: Color.red))
            
            Spacer()
        }
        .padding(.horizontal, 50)
    }
}

struct Bootcamp36_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp36()
    }
}
