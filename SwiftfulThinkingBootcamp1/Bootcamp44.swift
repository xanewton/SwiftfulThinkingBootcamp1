//
//  Bootcamp44.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-28.
//

import SwiftUI

// Documentation
struct Bootcamp44: View {
    
    // MARK: Properties
    
    @State var data: [String] = ["Apples", "Oranges", "Bananas"]
    @State var showAlert: Bool = false

    // MARK: Body
    
    // Nick - Working copy
    /*
     Things to do:
     1) Fix the Alert
     2) Update colors
     NOTE: To fold   [ALT + COMMAND + LEFT ARROW]
     NOTE: To unfold [ALT + COMMAND + RIGHT ARROW]
     */
    var body: some View {
        NavigationView { // START: NAV
            ZStack{
                // background
                Color.orange.edgesIgnoringSafeArea(.all)
                
                // foreground
                // NOTE: To see documentation [ALT + LEFT CLICK]
                foregoundLayer
                .navigationTitle("Documentation Bootcamp")
                .navigationBarItems(
                    trailing: Button("Alert", action: {showAlert.toggle()})
                )
                .alert(isPresented: $showAlert, content: {
                    getAlert(text: "This is the alert!")
                })
                
            }
        } // END: NAV
    }
    
    /// This is the foreground layer that holds a scrollView
    private var foregoundLayer: some View {
        ScrollView { // START: SCROLL
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLL
    }
    
    // MARK: Functions
    
    /// Gets an alert with a specified title.
    ///
    /// This function creates and returns an alert inmediately. The alert will have a title based on the text parameter but it will NOT have a message.
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// ```
    ///
    /// - Warning: There is no additional message in this Alert.
    /// - Parameter text: This is the title for the alert.
    /// - Returns: An alert with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: Preview

struct Bootcamp44_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp44()
    }
}
