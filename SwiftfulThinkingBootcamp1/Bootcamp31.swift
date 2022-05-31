//
//  Bootcamp31.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-24.
//

import SwiftUI

// Show alerts
struct Bootcamp31: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlert? = nil
    //@State var alertTitle: String = ""
    //@State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    enum MyAlert {
        case sucess
        case error
    }
    
    var body: some View {
        ZStack{
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack{
                Button("Button 1") {
                    alertType = .error
                    //alertTitle = "Error uploading video"
                    //alertMessage = "The video could not be uploaded."
                    showAlert.toggle()
                }
                Button("Button 2") {
                    alertType = .sucess
                    //alertTitle = "Success uploading video"
                    //alertMessage = "The video was uploaded."
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: { getAlert() })
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error!"))
        case .sucess:
            return Alert(title: Text("This was a success!"), message: nil, dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        default:
            return Alert(title: Text("Error"))
        }
        
        /*
        return Alert(
            title: Text(alertTitle),
            message: Text(alertMessage),
            dismissButton: .default(Text("OK")))*/
        
        /*return Alert(
            title: Text("This is the title"),
            message: Text("This is the message"),
            primaryButton: .destructive(Text("Delete"), action: {
                backgroundColor = .red
            }),
            secondaryButton: .cancel())*/

        //return Alert(title: Text("There was an error"))
    }
}

struct Bootcamp31_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp31()
    }
}
