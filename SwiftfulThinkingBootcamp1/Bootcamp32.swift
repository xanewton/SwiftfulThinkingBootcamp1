//
//  Bootcamp32.swift
//  SwiftfulThinkingBootcamp
//
//  Created by newtan on 2022-05-25.
//

import SwiftUI

// ActionSheet
struct Bootcamp32: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    /*var body: some View {
        Button("Button") {
            showActionSheet.toggle()
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet1 )
    }*/
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button(action: {
                    actionSheetOption = .isOtherPost  //.isMyPost
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet2 )
    }
    
    func getActionSheet1() -> ActionSheet {
        //return ActionSheet(title: Text("Title"))
        
        let button1: ActionSheet.Button = .default(Text("Default"))
        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
        let button3: ActionSheet.Button = .cancel()
        
        return ActionSheet(
            title: Text("Title"),
            message: Text("Message"),
            buttons: [button1, button1, button1, button2, button3])
    }
    
    func getActionSheet2() -> ActionSheet {
        let shareButton: ActionSheet.Button = .default(Text("Share")){
            // Code to share post
        }
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            // Code to report post
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            // Code to delete post
        }
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("What would you like to do?")
        
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton])
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, deleteButton, cancelButton])
        }
    }
}

struct Bootcamp32_Previews: PreviewProvider {
    static var previews: some View {
        Bootcamp32()
    }
}
