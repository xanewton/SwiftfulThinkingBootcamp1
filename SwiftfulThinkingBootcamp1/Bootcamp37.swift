//
//  Bootcamp37.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-26.
//

import SwiftUI

// Picker
struct Bootcamp37: View {
    
    var body: some View {
        //Picker1()
        Picker2()
        //Picker3()
    }
}

struct Picker1: View {
    
    @State var selection1: String = "1"
    
    var body: some View {
        VStack{
            HStack{
                Text("Age: ")
                Text(selection1)
            }
            
            Picker(
                selection: $selection1,
                label: Text("Picker"),
                content: {
                    ForEach(18..<100) { number in
                        Text("\(number)")
                            .font(.headline)
                            .foregroundColor(.red)
                            .tag("\(number)")
                    }
                })
            .pickerStyle(WheelPickerStyle())
            //.background(Color.gray.opacity(0.5))
        }
    }
}


struct Picker2: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    // The formating of the label doesn't work. No idea why?
    var body: some View {
        Picker(
            selection: $selection,
            label: HStack {
                Text("Filter:")
                Text(selection)
            }
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(Color.blue)
            .cornerRadius(10)
            .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
            ,
            content: {
                ForEach(filterOptions, id: \.self) { option in
                    Text(option)
                        .tag(option)
                }
            }
        )
        .pickerStyle(MenuPickerStyle())
    }
}


struct Picker3: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        // Changing the style for all pickers in the app that use UIKit, like picker3
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        /*let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor = UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
         */
    }
    
    var body: some View {
        Picker(
            selection: $selection,
            label: Text("Picker"),
            content: {
                ForEach(filterOptions, id: \.self) { option in
                    Text(option)
                        .tag(option)
                }
            }
        ).pickerStyle(SegmentedPickerStyle())
    }
}

struct Bootcamp37_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp37()
    }
}
